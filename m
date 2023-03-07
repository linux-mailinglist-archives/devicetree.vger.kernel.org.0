Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BB176AF843
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 23:08:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230236AbjCGWIj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 17:08:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbjCGWIh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 17:08:37 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0D008E3C2
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 14:08:35 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id 82so12921457ybn.6
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 14:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678226915;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K5B0MmPME28SdP1PdSjzrjlZM3Hm3np7uTNu3SS6fZI=;
        b=YIQZikOs96Wd+1xgLw8hFORV8tgf2wAGM7MW+UM+MQFiF7HRCNbSmDeZ/7saBZu2Zf
         hzm0+fL26o0ene4Qm+0QNOSCHAwMZML33t96CvykWIlYYNinDO20yM+9tfX6Pw8T9NPW
         LL6kW+LpZWftlZLXX3AT/zH7sAn5AiBPGOjY148PtYom1qu8T4CCmNZM2phbidJEeoFL
         cpiZ/vb/kb34+j58omNq87Hr/nsUsqQfrPa530SiV+KBphCggwIF636dMbVxW/dr4LPb
         QjR5Qj8ZF20Rhn0vGWfdGeo5RnNhhJrmeCCzFpEsP8VaIBRVIjVg5YS+i9x5wzXvky6/
         4iwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678226915;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K5B0MmPME28SdP1PdSjzrjlZM3Hm3np7uTNu3SS6fZI=;
        b=BPw+0upl5FCiZsPvhYK+PM9dY/QDrZWkaPB8fx1zunVpYEPv4Z89fcblgbsPFBddoM
         Y+kY/Z5a40JYOlcKfUDoKvO4uZxoHK38azB3zOmW0DX/bOCu/iY7x/4/PPain6Nnm976
         GFhJp4E2vovA2E232O5xU41jse1Ox3kdeEjkCbxZWHNfHRv2pMd/icpKFIu7sWbkGxQa
         dorcWOnPSfjxPFn/yQ0A4Av7i0nuq4DRyob5y3hIg4kW+JxMSdR0Yh10VqoI4l0KzAdm
         2GtFE1XD9DvLHOCDtCYWss7toNXMMctJuQ6VkqdCFmYW6EAHZKyqNGCQUEJxZbtoD4uG
         0+xQ==
X-Gm-Message-State: AO0yUKUX3p9EoB4ZYrdjB+I/4IWNcTExGa/SOadxRRtWUziIe39/fR0e
        uS4aAZpCXJ/hjs2lpl81IDUfcqoaaSIIrGgcyOhi5w==
X-Google-Smtp-Source: AK7set/hdo6UK9mqvdv+ZB8TkXJyJW5Wn2J2KXdw2ntKBxmHkPpUGjET39Z+tHZ7rBU8S2+bIu/pdJyQoqb6WygVF6Q=
X-Received: by 2002:a5b:38a:0:b0:ac9:cb97:bd0e with SMTP id
 k10-20020a5b038a000000b00ac9cb97bd0emr7568099ybp.5.1678226914852; Tue, 07 Mar
 2023 14:08:34 -0800 (PST)
MIME-Version: 1.0
References: <20230217-topic-lenovo-panel-v2-0-2e2c64729330@linaro.org> <20230217-topic-lenovo-panel-v2-1-2e2c64729330@linaro.org>
In-Reply-To: <20230217-topic-lenovo-panel-v2-1-2e2c64729330@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Mar 2023 23:08:23 +0100
Message-ID: <CACRpkda7=Y4ZRBDOhxE974qV-yXuFyZZs7m_aBwtF9qivV5WQg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display/panel: Add Lenovo NT36523W
 BOE panel
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jianhua Lu <lujianhua000@gmail.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 7, 2023 at 2:26=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro.=
org> wrote:

> Add bindings for the 2000x1200px IPS panel found on Lenovo Tab P11/
> XiaoXin Pad devices.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

(...)
> +$id: http://devicetree.org/schemas/display/panel/lenovo,nt36523w-boe-j60=
6.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NT36523W BOE panel found on Lenovo J606 devices

It's a Novatek NT36523 display controller-based device isn't it?

I would reflect that in the title or at least the description.

> +
> +maintainers:
> +  - Konrad Dybcio <konrad.dybcio@linaro.org>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: lenovo,nt36523w-boe-j606
> +
> +  reg:
> +    maxItems: 1
> +    description: DSI virtual channel
> +
> +  vddio-supply: true
> +  reset-gpios: true
> +  rotation: true
> +  port: true

This is clearly (as can be seen from the magic in the driver) a
Novatek NT36523 display controller, just configured differently.
https://lore.kernel.org/lkml/20230220121258.10727-1-lujianhua000@gmail.com/=
T/

Why can't you just modify the existing nt36523 binding from
Jianhua Lu by e.g. making these two non-required:

 - vddpos-supply
 - vddneg-supply

It would not be helpful for driver writers to have two different bindings
for similar hardware hand having to write code to handle different
properties depending on which binding is used, so please unify into
one binding by cooperating with Jianhua.

Would it help if we merged Jianhua's binding so you can build on top?

Yours,
Linus Walleij
