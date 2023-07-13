Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8FAA75214D
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 14:32:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234253AbjGMMcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 08:32:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234554AbjGMMcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 08:32:14 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89998268D
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 05:32:12 -0700 (PDT)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D00513F71E
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 12:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1689251530;
        bh=OmJAYdfXr11pAMCyImFxnsohime3j/dmz8eTaaKAUKk=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=kTnza/5P3Qc5UCZ1ZtavGhm/swSIVdoNdb+IxJgtrkTVABAu27ZLbNQWC/Yh7tnfu
         vZt1WSCDO0sqSIQFHk362d37rOvk4LgRMigo8f3HmzLDiNZgBlPjSD8fnimlv9PRyJ
         dKu9Gh0imYVogOOvzZC44aNre+FZYH+g25a38HA8SmxzJk6FjL6mwRHqwxNUmrLBtk
         kKupXxir/U6xLK7qG2vtghU4HnU2jwsxfXJSHSA96qfBAJPfvQ+SGlNmBXlGoielK8
         /9zFRAw+dZ79vD+ks4VaYCkE+s/6yc+jg8yOoxINY9J/UQXh11XNtIOH+n2YEG07kh
         pBpayfaVXtTGQ==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-403b134421cso4992021cf.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 05:32:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689251529; x=1691843529;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OmJAYdfXr11pAMCyImFxnsohime3j/dmz8eTaaKAUKk=;
        b=YEFOrRp9RewrFYboIrzvyIeevlTrR8UYykyF4ojD1AtUJdvIbf8aK1BIaYMPcYsW8F
         x3RKQURGpSedzlDPtWIw3y7masAJ8OS95AWH/XHSFjBP/uhNCkZFRnGyWPmOQHW3jaLw
         RW1djcaOAAQC8c1+0m5llRRIT2eJU/0iClL1MXdFdt8kvsV+9wtrvL8KmE+KHVdVRTaT
         ngvJiYH1O99t3YDKCPyhyT2SX0AKWvjKQ8ktb2KkglO4pc748bJ0ZCIPSE5YxznKS+6i
         4LUC49i0xfjAu8aBptVxiDDzx1VaesHcM82is9xpeu+BLagIIhjl8T06SqQStl3KZMl6
         0v0g==
X-Gm-Message-State: ABy/qLZYj+JHksuU+bIByqbI9ei0DsZ7t7hoMHrsth4X1vwDpEsTLwTd
        4DOui7k5XF6/1FSStdWFLV6f6XZCMSLXAuUGtb6pMIzrlVgBKxB2tJiEiI9wv78g4/7S3XFjPA6
        /e5kBfPrA51X+qyRTJJ4e5BiNhjpq1AM5UjDaoOk3lqRmv7HPzhjJTeU=
X-Received: by 2002:a05:622a:13d3:b0:400:9346:bf36 with SMTP id p19-20020a05622a13d300b004009346bf36mr1833910qtk.17.1689251529210;
        Thu, 13 Jul 2023 05:32:09 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHA5vK3hxfhXcY8G5rQmLZDXTBJyd7aSNs425ysD//K9J5R9Fx3mszf1d/OFc5OhPAt3GVAQ5/HeZZIq31NJYo=
X-Received: by 2002:a05:622a:13d3:b0:400:9346:bf36 with SMTP id
 p19-20020a05622a13d300b004009346bf36mr1833884qtk.17.1689251528953; Thu, 13
 Jul 2023 05:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230704064610.292603-1-xingyu.wu@starfivetech.com> <20230704064610.292603-3-xingyu.wu@starfivetech.com>
In-Reply-To: <20230704064610.292603-3-xingyu.wu@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Thu, 13 Jul 2023 14:31:52 +0200
Message-ID: <CAJM55Z_G-OA_zmYoYueOGgYKMFHjPurJYAypTBw=P4WLkyn9Bw@mail.gmail.com>
Subject: Re: [RESEND PATCH v6 2/7] dt-bindings: soc: starfive: Add StarFive
 syscon module
To:     Xingyu Wu <xingyu.wu@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        William Qiu <william.qiu@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 4 Jul 2023 at 08:49, Xingyu Wu <xingyu.wu@starfivetech.com> wrote:
>
> From: William Qiu <william.qiu@starfivetech.com>
>
> Add documentation to describe StarFive System Controller Registers.
>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> Co-developed-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> ---
>  .../soc/starfive/starfive,jh7110-syscon.yaml  | 93 +++++++++++++++++++
>  MAINTAINERS                                   |  7 ++
>  2 files changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
>
> diff --git a/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml b/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
> new file mode 100644
> index 000000000000..0039319e91fe
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/starfive/starfive,jh7110-syscon.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive JH7110 SoC system controller
> +
> +maintainers:
> +  - William Qiu <william.qiu@starfivetech.com>
> +
> +description:
> +  The StarFive JH7110 SoC system controller provides register information such
> +  as offset, mask and shift to configure related modules such as MMC and PCIe.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: starfive,jh7110-sys-syscon
> +          - const: syscon
> +          - const: simple-mfd
> +      - items:
> +          - enum:
> +              - starfive,jh7110-aon-syscon
> +              - starfive,jh7110-stg-syscon
> +          - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  clock-controller:
> +    $ref: /schemas/clock/starfive,jh7110-pll.yaml#
> +    type: object
> +
> +  "#power-domain-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: starfive,jh7110-sys-syscon
> +    then:
> +      required:
> +        - clock-controller
> +    else:
> +      properties:
> +        clock-controller: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: starfive,jh7110-aon-syscon
> +    then:
> +      required:
> +        - "#power-domain-cells"
> +    else:
> +      properties:
> +        "#power-domain-cells": false
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscon@10240000 {
> +        compatible = "starfive,jh7110-stg-syscon", "syscon";
> +        reg = <0x10240000 0x1000>;
> +    };
> +
> +    syscon@13030000 {
> +        compatible = "starfive,jh7110-sys-syscon", "syscon", "simple-mfd";
> +        reg = <0x13030000 0x1000>;
> +
> +        clock-controller {
> +            compatible = "starfive,jh7110-pll";
> +            clocks = <&osc>;
> +            #clock-cells = <1>;
> +        };
> +    };
> +
> +    syscon@17010000 {
> +        compatible = "starfive,jh7110-aon-syscon", "syscon";
> +        reg = <0x17010000 0x1000>;
> +        #power-domain-cells = <1>;
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 35e19594640d..58ba04bd0bc8 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20127,6 +20127,12 @@ S:     Supported
>  F:     Documentation/devicetree/bindings/mmc/starfive*
>  F:     drivers/mmc/host/dw_mmc-starfive.c
>
> +STARFIVE JH7110 SYSCON
> +M:     William Qiu <william.qiu@starfivetech.com>
> +M:     Xingyu Wu <xingyu.wu@starfivetech.com>
> +S:     Supported
> +F:     Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
> +
>  STARFIVE JH71X0 CLOCK DRIVERS
>  M:     Emil Renner Berthing <kernel@esmil.dk>
>  M:     Hal Feng <hal.feng@starfivetech.com>
> @@ -20164,6 +20170,7 @@ STARFIVE SOC DRIVERS
>  M:     Conor Dooley <conor@kernel.org>
>  S:     Maintained
>  T:     git https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/
> +F:     Documentation/devicetree/bindings/soc/starfive/
>  F:     drivers/soc/starfive/
>
>  STARFIVE TRNG DRIVER
> --
> 2.25.1
>
