Return-Path: <devicetree+bounces-940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 727897A40D7
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 08:06:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D0AE281512
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 06:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D455250;
	Mon, 18 Sep 2023 06:06:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8001833D7
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 06:06:15 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84E01CD
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 23:06:13 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-59bebd5bdadso41491557b3.0
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 23:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695017172; x=1695621972; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z8q7Bt+xiXJJWh6C0Z2ZmHz6Wu+8lDfWhrLPtQJ73+U=;
        b=E45y1PN2Yo9Pj0qbO7N2B93ijEKRDDOAFcIdgTVa8I3V1rvJ1yVvSWKl1VHv0gavGm
         6sMJ57Xyk84w43Z02FCAh7Bb49knwkKbe/i8/2kbTx2lDLlCU9ABW1RfCsBWG5zCw4Lo
         iGcM2Kwpi2cxXXdG+jR6l5YPvMhqI2HTGpHmigOkXuWHNQE7dSv6bOR2FJTk8jjonL23
         aCycU4ioi8wyFqfekeQMTQY8zLs21/P9EdqRd1927pihqXMOj8DkhHRXYaimsGRqNFpu
         lXLOtRrOYwOvo3hPevy1oXG9aZdWoWUEPToCfxBZ73H7Tvn3enzzql/g381aQbMHOrbT
         QCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695017173; x=1695621973;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z8q7Bt+xiXJJWh6C0Z2ZmHz6Wu+8lDfWhrLPtQJ73+U=;
        b=m7SujDCb1o9ZM8+5PfRTwG7DrVBZK1IwPm2PHpeXykF60UtDyTRFDFkW1jz7qaVctz
         bVMvMS9JVD0ZLQjgyZWVFX7yWwtDdCZx4U3m5q/73SRGUg+EHwYQpNB3rREL87YrW+I4
         nSK/gvjwaGUhWFzO48mg+nDeqLfuEw2Xbru+hQHNsVPuD1cxzTBK/6PBfZk9ZYdqocvy
         ixbbWbcVRgHWXpqAseNOpb4QQkQJce/spamTatw6v8STX4Ah6s/IfJXrdXTZTmyYY67b
         23F1Cz/i/TlhMSaKACJibvvhWXZ/8BhLM4ocFE9HTpo7CaEbCgVMQ9iI7N4e3aZ0u36T
         ZTWQ==
X-Gm-Message-State: AOJu0YzOiJ/IY67DML1jMgdk6RxGvfvKx8UnBb5NC68h5mReyBYazmpt
	UiyWjsKfFfFnfK6uJzaOZ+ZREcHI5xRXrrXBneMYpg==
X-Google-Smtp-Source: AGHT+IFcWO4BakHTO+j8ugMmEesfwNr0A/vj6TKAEbB/4hZA4CWIs7TCyDnUkRFVGoi+0YCBNkXaCGGO/QSLJdfquNE=
X-Received: by 2002:a81:9114:0:b0:59b:bd55:8452 with SMTP id
 i20-20020a819114000000b0059bbd558452mr9479330ywg.36.1695017172771; Sun, 17
 Sep 2023 23:06:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230915201520.4179115-1-robh@kernel.org>
In-Reply-To: <20230915201520.4179115-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 Sep 2023 08:06:01 +0200
Message-ID: <CACRpkda9gq7ZqNOMWBysJXunB2Li1xOu=kxtmenYnZuKSPKb1g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: armltd: Move Arm board syscon's to
 separate schema
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lee Jones <lee@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 15, 2023 at 10:15=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:

> The Arm Ltd board bindings are a bit unusual in that they define child
> nodes for various syscon's. The schemas are also incomplete as they lack
> constraints on having additional properties and some properties are
> missing. As the bindings for the different platforms only vary by
> compatibles, combine them into a single schema doc.
>
> Add the "arm,im-pd1-syscon" compatible which was not documented. Add
> "ranges", "#address-cells", and "#size-cells properties which were
> missing.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Thanks for cleaning this up. My excuse is that it happened in the
early days of schemas.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

