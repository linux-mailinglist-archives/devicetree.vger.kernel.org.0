Return-Path: <devicetree+bounces-532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 028FB7A1D82
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7814028248F
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 742A4101EA;
	Fri, 15 Sep 2023 11:34:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C77DDB7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:34:29 +0000 (UTC)
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A04C41B0
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:34:24 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-d7e904674aeso2004620276.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694777664; x=1695382464; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Kv6JEQFcsrnzpWFFm1Egtte4f89/osfDTfeBF7WZUY=;
        b=d/n58MxjYsQN/RCOo95fznd1NYJuUQhpW1O/ug1QCKVtKzKnPJ2dl5xvpOVjoEqhxE
         vukMLDAOkzG+8tQ3/X32vbsKjHhihCRSkYHi4tUPC7CU7/UnXOvWKzOfNhE5Yc2+gObj
         KJYo4n+D1H3CX9Ldw54T6L9s+QioaSOYIYZy8PEv56yQiEjDxns7sf6VTXC0MP4wYVWW
         rF1Z3qIEwhjv6GXXhE3LiNMTlEKv2f98DXJ0MqubSAbMVfTGwN3r2xBP9DKA0XgpRhk+
         lWoVzzaAeJHb2uYmM2sn5no4J64SU4d3ERkktHOpBg1kn0kJeBZauInYhjtHUj3Fkf7B
         A04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694777664; x=1695382464;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Kv6JEQFcsrnzpWFFm1Egtte4f89/osfDTfeBF7WZUY=;
        b=QrGACOZj9JeQKKkAmlmFo1g5qeI8MFgAMuUnuOgpJ0aq1CEvXCQbLPwTAyMnB8iSQR
         56zj/REU7Kq9fiagWTaztYkHcMTqhvVPc+yEodS/eRHOZYUF2/cgSeST9mwbExoK3PnC
         aMCILQInHdbNbDqM0Cne2lb/iab1ynNgd0ENVVrdqsZpQxQL++TjrKMa5+lpUFAUXCVc
         Dsz2WXfqVvrUslYvf66y3EGvbkIECXBRgczvKkzXc+/ABS34IfQ3DQWpxVxO6JIsci5L
         tLl7b8FB34VQ/2EsEwTt5nrjzgumn7//1CdWMa731Yd+P60KgePTKdHVaYP/Fjhi0iZh
         0l6g==
X-Gm-Message-State: AOJu0YxRrYrLPjfaSToWCGD0ulfQPcl+eZHwhly0QJCJPZ5ICoAHESlN
	925UZTQ+kj7mQjI6F5URkzJ7ggWg4jTykgRGjfPdzQ==
X-Google-Smtp-Source: AGHT+IHquDSCATPUfOafimJDtA6rqVzupiMVv6sSYPVZ/en6AfEXWBxeWyYqS2rSJp/nU84HZmbw0FsMog3WlFSWBPA=
X-Received: by 2002:a25:2fd3:0:b0:d78:3abc:ec73 with SMTP id
 v202-20020a252fd3000000b00d783abcec73mr1203222ybv.6.1694777663825; Fri, 15
 Sep 2023 04:34:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <3d4b1bbc105ccb8cc0a4ea79b76c70df7d0683e6.1694768749.git.geert+renesas@glider.be>
In-Reply-To: <3d4b1bbc105ccb8cc0a4ea79b76c70df7d0683e6.1694768749.git.geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 15 Sep 2023 13:34:12 +0200
Message-ID: <CACRpkdYcyxQVjiMqoUJ1JbOLeywoeDGR8dY+ZLZT1kdmk1kSVA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: arm: realview: Spelling s/ARM 11/Arm11/,
 s/Cortex A-/Cortex-A/
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 15, 2023 at 11:07=E2=80=AFAM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Fix misspellings of "Arm11", "Cortex-A8", and "Cortex-A9".
>
> While at it, add a missing comma before "and", and reflow the paragraph.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Picked up the patch and applied it on my versatile-dts branch,
thanks for cleaning this up Geert!

Yours,
Linus Walleij

