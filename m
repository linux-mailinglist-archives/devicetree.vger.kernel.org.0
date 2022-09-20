Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDB925BEC24
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 19:39:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229825AbiITRiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 13:38:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230020AbiITRiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 13:38:54 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8D536DF92
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 10:38:52 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id p5so3852127ljc.13
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 10:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=uBE+KECyTcaP34KF8rn40YHxJdGZROCQlT/llppPOdA=;
        b=Sk1QAlTA5r43nU9/eWWTtejNQXkepCXyzsAGFWknYIA+McXY/50Y8oecf/hEfHHoAX
         +EeTCqrW2j+pAOGMG1SWJSMK4BiLbL9XMVE4xI2E+LbVHK2HN8J6IjAoqwo+eUDW79Ll
         j/+F7vOaHjguVx4YOjv4e3iv/0ZNb9dD9REW98ZpMCOdaiIbTuFlJjdClXNxAEZ/eiTP
         Uesh77YbzNmhP5DrYaMJZc0dFmfXijpw91Wkc5OEWJMqsidv2eSKNcDiZidqZWpirkRL
         VwbmC+rsybmX+8B9wX/xbuiEHO03bPKgfo692n2/SkOZRLmHfR6yiaWLA08QAmzdrEe6
         h6Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=uBE+KECyTcaP34KF8rn40YHxJdGZROCQlT/llppPOdA=;
        b=j/41D6M6eInh2uKHkqWbPlxehvsp5cFXwn2JXBHNZkBhVSbA9ajzjf3Yzcdh5Sc3Pt
         W9AVFiUhZvsoa9JNWNrsWsUTld8hA1g5NmUMqoEUqdKy+kOpI+/7naGMQkebzAVDh4av
         1w2+yyMfj7HzlamPwacANYK0h8sDQidX2CGJarF6nt7EUBiMsqmyrShCXzSv28+1bOg2
         u9lv3r5flC4OvSXcZrfFMvibYChH0HJ+bcxJ9W6gpEvWDSV+ytTHe9n1bW00FOhZto1B
         2L8FtfUOPJkaO8fMx1XrJ/pU1KCkqkLl0c1JKReBCSXJCY9JKqrGn8PNJRVgmDe6W/MF
         Ducw==
X-Gm-Message-State: ACrzQf1MSPR/HN84llupHMXBeLWpz+LQl7BC/cTmCn6OyI/q/v9sZNs5
        hp0urg5sKterj7lCCIewI7VKv/J7pEarLtdN1lw=
X-Google-Smtp-Source: AMsMyM5ry6LEqrNnxVUI9kJYPdc3sIxIryuU47tUy3HoCnDIrCTIF0sAGugR11WOEIzW6ebHrhBCOoMV/7RIVAV0bZk=
X-Received: by 2002:a05:651c:b1f:b0:26c:5144:49dd with SMTP id
 b31-20020a05651c0b1f00b0026c514449ddmr3262521ljr.428.1663695529960; Tue, 20
 Sep 2022 10:38:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220920170937.14486-1-macroalpha82@gmail.com> <20220920170937.14486-2-macroalpha82@gmail.com>
In-Reply-To: <20220920170937.14486-2-macroalpha82@gmail.com>
From:   Maya Matuszczyk <maccraft123mc@gmail.com>
Date:   Tue, 20 Sep 2022 19:38:13 +0200
Message-ID: <CAO_Mup+v0VnHhtJq089sp0F4M4pS=V9=GT1W5MfCQSiRYsfgDw@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: display: panel: Add Samsung
 AMS495QA01 bindings
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, airlied@linux.ie,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
        thierry.reding@gmail.com, sam@ravnborg.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,
Thanks for the patch,
It's so nice seeing more pieces of RG503 being upstreamed.

wt., 20 wrz 2022 o 19:10 Chris Morgan <macroalpha82@gmail.com> napisa=C5=82=
(a):
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add documentation for the Samsung AMS495QA01 panel.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsu=
ng,ams495qa01.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams4=
95qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams49=
5qa01.yaml
> new file mode 100644
> index 000000000000..08358cdad19c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.=
yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml=
#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung AMS495QA01 4.95in 960x544 DSI/SPI panel
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: samsung,ams495qa01
> +  reg: true
> +  reset-gpios: true
> +  elvdd-supply:
> +    description: regulator that supplies voltage to the panel display
Datasheet says about that pin:
"Power pin for module analog", maybe in description that could be
accounted for?

> +  enable-gpios: true
> +  port: true
> +  vdd-supply:
> +    description: regulator that supplies voltage to panel logic
Maybe change that to "panel's logic"?

> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        panel@0 {
> +            compatible =3D "samsung,ams495qa01";
> +            reg =3D <0>;
> +            vdd-supply =3D <&vcc3v3_lcd0_n>;
> +        };
Where's the node of DSI controller the panel's attached to?

> +    };
> +
> +...
> --
> 2.25.1
>

Best Regards,
Maya Matuszczyk
