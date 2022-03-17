Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 389024DCE9F
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 20:16:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237958AbiCQTRR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 15:17:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237956AbiCQTRP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 15:17:15 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43F0A21BC50
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 12:15:53 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id mj15-20020a17090b368f00b001c637aa358eso8530266pjb.0
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 12:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=vB5f3WAF1j14ezOj7+5eexYupdGogMxyhohhnTpJG3I=;
        b=rsLp6M4LC+ha3ufnaOhyywMK6wmY6Hf56U49g+9vNFfpqvMCyNPyBpiXhCkP4xvbFY
         9E0p8IUr27FGHaoK7iyxQC3LZEG+aoMEI0eUOhXhY5l8IV7wep6uEjjREn4iPEyxIWfa
         wbW2PSjskg54Dad/119rVJKOnZZ/dKg/Yf0disLS6nfuXqzpBD2K+wgg44U2t++ZNdaj
         nwwN1p3XtunPwuDDi16+096nin1zKvJ1Iwz0M45yHJl5c4CRlf06irAv0f0VrmFpc5jp
         GmsJaef8JdJ61XJO/g5QB+dOFOqwY55fZwTUT9FvXAolqNcCT0I12Uu8mpBgBGF9/QUB
         MMuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=vB5f3WAF1j14ezOj7+5eexYupdGogMxyhohhnTpJG3I=;
        b=p+8GbjTSNj/pX3ErJ0vaT4lWuypjx1R7qFr3mEVWvCGEWtogHYuVohbLlsphSwIXEA
         XJ/6x+r+0wtyn9hIgkfkMbV2i2LlPZZDONhpJNvlEGuG14mwt20Vl/3HNTjfQXW2D7m+
         o7NCSWVY/vxJ3/ovP5uXIlcDS+9nsjj40gg4J1Kp8eXmSGxl3BJ+mkj5h6SZts4elqog
         9WpjetM1A1qTlu45/rHMWr1q6aiDH/HID4v2iuIMo+1vwnVPa71C9vtrX7DnDcbKznW8
         ZN+Qn8x/p2mhfyxbGDcODKK8O0jD+bov5vdZWLjH+mKW9BwH8qCtXkLR7XqHaqECJz8b
         jSag==
X-Gm-Message-State: AOAM533Do0UtdjNQLu6Fr8kKjeg+Gp24QmS8E1GxGlBB0lUqBG1Hiesa
        yJFAKrWLVLDnnJ1Ch3kW4gSwqw==
X-Google-Smtp-Source: ABdhPJwHtQFbcAMtkjIIk7TTag/gBPH400hGz9/wqUBz3Ag9FMPGaHQJZvaF1c312w1xdnvPWdUyvA==
X-Received: by 2002:a17:90b:4d11:b0:1c2:1939:ca83 with SMTP id mw17-20020a17090b4d1100b001c21939ca83mr17770961pjb.65.1647544552516;
        Thu, 17 Mar 2022 12:15:52 -0700 (PDT)
Received: from localhost ([12.3.194.138])
        by smtp.gmail.com with ESMTPSA id j12-20020a056a00234c00b004fa042e822bsm7558479pfj.14.2022.03.17.12.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 12:15:51 -0700 (PDT)
Date:   Thu, 17 Mar 2022 12:15:51 -0700 (PDT)
X-Google-Original-Date: Thu, 17 Mar 2022 12:15:46 PDT (-0700)
Subject:     Re: [PATCH 17/18] dt-bindings: irqchip: sifive: include generic schema
In-Reply-To: <20220317115705.450427-16-krzysztof.kozlowski@canonical.com>
CC:     tglx@linutronix.de, Marc Zyngier <maz@kernel.org>,
        robh+dt@kernel.org, krzk+dt@kernel.org, afaerber@suse.de,
        mani@kernel.org, linusw@kernel.org, kaloz@openwrt.org,
        khalasa@piap.pl, michael@walle.cc, mark-pk.tsai@mediatek.com,
        daniel@thingy.jp, j.neuschaefer@gmx.net,
        Paul Walmsley <paul.walmsley@sifive.com>, nm@ti.com,
        kristo@kernel.org, ssantosh@kernel.org, narmstrong@baylibre.com,
        dinguyen@kernel.org, cristian.ciocaltea@gmail.com,
        qiangqing.zhang@nxp.com, l.stach@pengutronix.de,
        paul@crapouillou.net, jiaxun.yang@flygoat.com,
        claudiu.beznea@microchip.com, jason@lakedaemon.net,
        paulburton@kernel.org, tsbogend@alpha.franken.de,
        mail@birger-koblitz.de, bert@biot.com, john@phrozen.org,
        geert+renesas@glider.be, sagar.kadam@sifive.com, s-anna@ti.com,
        lokeshvutla@ti.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, openbmc@lists.ozlabs.org,
        linux-riscv@lists.infradead.org, linux-oxnas@groups.io,
        krzysztof.kozlowski@canonical.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     krzysztof.kozlowski@canonical.com
Message-ID: <mhng-8f60f19c-40cb-4b5e-b392-9cdf8adc1d13@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 17 Mar 2022 04:57:04 PDT (-0700), krzysztof.kozlowski@canonical.com wrote:
> Include generic interrupt-controller.yaml schema, which enforces node
> naming and other generic properties.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml     | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> index 27092c6a86c4..e3c08cff89d2 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> @@ -44,6 +44,9 @@ maintainers:
>    - Paul Walmsley  <paul.walmsley@sifive.com>
>    - Palmer Dabbelt <palmer@dabbelt.com>
>
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +
>  properties:
>    compatible:
>      oneOf:
> @@ -91,7 +94,7 @@ required:
>    - interrupts-extended
>    - riscv,ndev
>
> -additionalProperties: false
> +unevaluatedProperties: false
>
>  examples:
>    - |

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

I'm assuming this is going in along with the others.

Thanks!
