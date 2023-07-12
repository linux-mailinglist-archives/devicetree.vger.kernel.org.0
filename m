Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F8FA7510A2
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 20:38:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232761AbjGLSiu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 14:38:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232071AbjGLSit (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 14:38:49 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 578EF1FC0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 11:38:47 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-992b2249d82so925086466b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 11:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689187126; x=1691779126;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LxASKFOrEScgM+uMT4ne6bAOXOKxG2G42Qpqzxz0eBU=;
        b=RU0ftmQbf09JVfqn5n1b0q7RJL3XyB8ouJSU1q+nznterBJZQKyXsIM4Q+YJNNh4Qp
         oxs2f0jIiIY4BArq2vhWn5q9HP/K8b43LbArsue4PQizIpNTb4E/gG+BJdcVA+95VNPD
         aoIlII159Afcfl7OEgaF9UTeSXnsN/sdYGaGSatW11EcwY8glu2LOP8MSmUcC/PV16AS
         ScsG9OqqgeOk9qf+vvn4VA0yw/pfujma3bPmJxx5JqdExhPezJjyWgvkP6JBgfYupHnj
         ROGvB/g2tBHi1Ai0EaJvPRe2KfOaPJQJulDHYLdaf0XfFiozxmqH2TEO+zPEJmiIrdvw
         127Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689187126; x=1691779126;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LxASKFOrEScgM+uMT4ne6bAOXOKxG2G42Qpqzxz0eBU=;
        b=GMUIiMmUk04r+w0cA8QgprCviTExehIHobACby9InUqncT8Jfb7n7NH9hIi0zD8xS8
         quCoi4NuNJmtPftwZFKAiMItAHtrTn01iza0wcBSxxIntQ2Xh8yZYGfshRnRwVxZOssx
         Py7fGfXiJLjeE2Xa+smXDWMA+kWiRV3LPCk6ri1gFUkY7tWILSSLUv6N5f26zI21P6hm
         NoHGPETKl2Pqx5uufiuGercvuKqLZG3GPEoWf5ctoh63nEmVObbbyPgmd+cvYzwDeyn9
         VkU+5tC1g6fidNNeNo4SHqLzGjUQCoOW4sd3L/qEgGIyXM+kcVid0R1GuRP5B6GvDdxg
         4HRQ==
X-Gm-Message-State: ABy/qLaLcA0WJK881KfhPfj3ZBPMXvC1OHg4B4OTqPrsNjAkHTNh/tLB
        GTWkXBpmVvaHqCPkRaGmZmzGAA==
X-Google-Smtp-Source: APBJJlE5fTshNRe1v09AJsoBArNoJF64u4TQhbmibOC+kXehvLWDHJndXRVvt6blSpmWT0WMTc8wWA==
X-Received: by 2002:a17:906:738d:b0:993:d7cf:f58 with SMTP id f13-20020a170906738d00b00993d7cf0f58mr16267676ejl.2.1689187125740;
        Wed, 12 Jul 2023 11:38:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id l24-20020a1709065a9800b00991bba473e1sm2866667ejq.3.2023.07.12.11.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 11:38:45 -0700 (PDT)
Message-ID: <f3965cf1-3f0a-15fe-7dd3-e83817a4ba3a@linaro.org>
Date:   Wed, 12 Jul 2023 20:38:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 1/7] dt-bindings: arm: fsl: add se-fw binding doc
Content-Language: en-US
To:     Pankaj Gupta <pankaj.gupta@nxp.com>, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, clin@suse.com,
        conor+dt@kernel.org, pierre.gondois@arm.com, ping.bai@nxp.com,
        xiaoning.wang@nxp.com, wei.fang@nxp.com, peng.fan@nxp.com,
        haibo.chen@nxp.com, festevam@gmail.com, linux-imx@nxp.com,
        davem@davemloft.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, gaurav.jain@nxp.com,
        alexander.stein@ew.tq-group.com, sahil.malhotra@nxp.com,
        aisheng.dong@nxp.com, V.Sethi@nxp.com
References: <20230712121219.2654234-1-pankaj.gupta@nxp.com>
 <20230712121219.2654234-2-pankaj.gupta@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712121219.2654234-2-pankaj.gupta@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 14:12, Pankaj Gupta wrote:
> The NXP's i.MX EdgeLock Enclave, a HW IP creating an embedded
> secure enclave within the SoC boundary to enable features like
> - HSM
> - SHE
> - V2X
> 
> Communicates via message unit with linux kernel. This driver
> is enables communication ensuring well defined message sequence
> protocol between Application Core and enclave's firmware.
> 
> Driver configures multiple misc-device on the MU, for multiple
> user-space applications can communicate on single MU.
> 
> It exists on some i.MX processors. e.g. i.MX8ULP, i.MX93 etc.
> 
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
> ---
>  .../bindings/arm/freescale/fsl,se-fw.yaml     | 121 ++++++++++++++++++
>  1 file changed, 121 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,se-fw.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,se-fw.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,se-fw.yaml
> new file mode 100644
> index 000000000000..7567da0b4c21
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,se-fw.yaml
> @@ -0,0 +1,121 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/freescale/fsl,se-fw.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX EdgeLock Enclave Firmware (ELEFW)
> +
> +maintainers:
> +  - Pankaj Gupta <pankaj.gupta@nxp.com>
> +
> +description: |
> +
> +  The NXP's i.MX EdgeLock Enclave, a HW IP creating an embedded
> +  secure enclave within the SoC boundary to enable features like
> +  - HSM
> +  - SHE
> +  - V2X
> +
> +  It uses message unit to communicate and coordinate to pass messages
> +  (e.g., data,  status and control) through its interfaces.
> +
> +  This driver configures multiple misc-devices on the MU, to exchange
> +  messages from User-space application and NXP's Edgelocke Enclave firmware.
> +  The driver ensures that the messages must follow the following protocol
> +  defined.
> +
> +                                     Non-Secure           +   Secure
> +                                                          |
> +                                                          |
> +                   +---------+      +-------------+       |
> +                   | ele_mu.c+<---->+imx-mailbox.c|       |
> +                   |         |      |  mailbox.c  +<-->+------+    +------+
> +                   +---+-----+      +-------------+    | MU X +<-->+ ELE |
> +                       |                               +------+    +------+
> +                       +----------------+                 |
> +                       |                |                 |
> +                       v                v                 |
> +                   logical           logical              |
> +                   receiver          waiter               |
> +                      +                 +                 |
> +                      |                 |                 |
> +                      |                 |                 |
> +                      |            +----+------+          |
> +                      |            |           |          |
> +                      |            |           |          |
> +               device_ctx     device_ctx     device_ctx   |
> +                                                          |
> +                 User 0        User 1       User Y        |
> +                 +------+      +------+     +------+      |
> +                 |misc.c|      |misc.c|     |misc.c|      |
> +  kernel space   +------+      +------+     +------+      |
> +                                                          |
> +  +------------------------------------------------------ |
> +                     |             |           |          |
> +  userspace     /dev/ele_muXch0    |           |          |
> +                           /dev/ele_muXch1     |          |
> +                                         /dev/ele_muXchY  |
> +                                                          |
> +
> +  When a user sends a command to the ELE, it registers its device_ctx as
> +  waiter of a response from ELE.
> +
> +  A user can be registered as receiver of command from the ELE.
> +  Create char devices in /dev as channels of the form /dev/ele_muXchY with X
> +  the id of the driver and Y for each users. It allows to send and receive
> +  messages to the NXP EdgeLock Enclave IP on NXP SoC, where current possible
> +  value, i.e., supported SoC(s) are imx8ulp, imx93.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx-ele
> +      - fsl,imx93-ele
> +
> +  mboxes:
> +    description:
> +      A list of phandles of TX MU channels followed by a list of phandles of
> +      RX MU channels. The number of expected tx and rx channels is 1 TX, and
> +      1 RX channels. All MU channels must be within the same MU instance.
> +      Cross instances are not allowed. The MU instance to be used is S4MUAP
> +      for imx8ulp & imx93. Users need to ensure that used MU instance does not
> +      conflict with other execution environments.
> +    items:
> +      - description: TX0 MU channel
> +      - description: RX0 MU channel
> +
> +  mbox-names:
> +    items:
> +      - const: tx
> +      - const: rx
> +
> +  fsl,mu-did:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Owner of message-unit, is identified via Domain ID or did.

What is Domain ID?

> +
> +  fsl,mu-id:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Identifier to the message-unit among the multiple message-unit that exists on SoC.
> +      It is used to create the channels, default to 2

Do you expect then multiple ele nodes in the DTS? What are these two
properties and why they are fixed per SoC, but still embedded in DTS?

> +
> +

Drop stray blank line.

> +required:
> +  - compatible
> +  - mboxes
> +  - mbox-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    ele_mu: ele_mu {

No underscores in node names, generic node names, e.g. firmware. Look at
existing code.

> +      compatible = "fsl,imx93-ele";
> +      mbox-names = "tx", "rx";
> +      mboxes = <&s4muap 2 0
> +                &s4muap 3 0>;

Two items, not one.

> +      fsl,mu-did = <1>;
> +      fsl,mu-id = <1>;
> +    };

Plus you clearly did not test the binding and DTS. You said you did some
internal review, so I assume this also includes some testing. How did
you test your DTS?

Best regards,
Krzysztof

