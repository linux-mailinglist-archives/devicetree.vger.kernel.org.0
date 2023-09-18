Return-Path: <devicetree+bounces-938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFFC7A40BE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 07:58:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41B2A1C209C5
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 05:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12DD5233;
	Mon, 18 Sep 2023 05:58:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A154D5230
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:58:35 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 529C9121
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 22:58:33 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-59be6605e1dso44143057b3.3
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 22:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695016712; x=1695621512; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oV1uCJ8pmpiIkKeLvWd+ZzcVlYy/aRUeYL380enELwQ=;
        b=eLDnyPWhaXgF1wtKykWq1r8CEEbAExVGwuf3VjxDhS8JkWEzg3RyQdt/jcT68uxI/h
         JUR9CZprDwZBy+eKplP5BXf8Q9r0m11k9VV6gZiSt47192IUvUc3QtZCocmZjJfcwb4x
         7w+6mxJ2529jx3pF1Dw76cv6BeFPWF+UumTwVXtz/PGuk7nFxITVB1K6KMqAUAS4cHYq
         ty+LT4iaMPXDOManj0VAK2dgJzsFuKJQWSJ8SK1PYz3faTivMRegvlTJm425TM2pKEa6
         mYtPSn/5bM/wqQhmdtctKnwvF9Xk0bLabbA3KbgneTdCq/iM/gmpAkc29KjMotoB9NYn
         trsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695016712; x=1695621512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oV1uCJ8pmpiIkKeLvWd+ZzcVlYy/aRUeYL380enELwQ=;
        b=tN84UZwlVn5q6JK23IfUMkZOQ4XAtxL6gyUggWfcTSfr2B4r3Oje78hDxERpzH+qTE
         8QIA3Ahmp7K3iVuoMBufc7XRFROWYREgeulnchxQrrPPFPth/EupvQO9dv5UhVjq3UEA
         kvpjzpKtuCHKqdippTG5eftxC7Bmh9z9XkVOd+56ob3J+54pIVV+ojMS29pxhbEu9fKa
         w4FUlhyV8DGWgHJRH7DX7bAPD2VcRvp0UaHP5lCIQQVb7XCwn6qP0/gNiwKvPsLAT5GH
         DWGZxiUR53czi7A/h6DibXd0spVEvIhUSL4FeVTA5wm8UsyNCA5sy7E4aQkgZSkVeZ/S
         619g==
X-Gm-Message-State: AOJu0YwoAyKT2cEYWBhoq2sV6DGndh4Nkyrwvxf5Sw4kJ2R8MH7N/Qu3
	hKXjMTYwaULTTECsPdiWvi2alhQCe0gWaeZID8ZTyQ==
X-Google-Smtp-Source: AGHT+IE2GGEGegrjeWO1lrgi7QNiOlH0eu34fYoq67Qp7gq81DXnLUWi/FDZIJ9TSRJzeWNHk2tiW0dzM3DiHHAoiys=
X-Received: by 2002:a81:79c3:0:b0:59e:afab:d5a5 with SMTP id
 u186-20020a8179c3000000b0059eafabd5a5mr864968ywc.23.1695016712528; Sun, 17
 Sep 2023 22:58:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230917190124.1012316-1-sebastian.reichel@collabora.com>
In-Reply-To: <20230917190124.1012316-1-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 Sep 2023 07:58:20 +0200
Message-ID: <CACRpkdZEo06hrYkcQiZe_3WP_vMahDP9vp6y2dGkYCroTtZB5w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: supply: Drop deprecated ab8500-battery
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 17, 2023 at 9:08=E2=80=AFPM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Linus Walleij modified AB8500 to use the generic simple-battery
> and samsung,battery bindings. This is an unused leftover that
> can be removed.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

How could I miss this.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

