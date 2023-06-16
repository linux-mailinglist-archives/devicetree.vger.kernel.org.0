Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EB3973297B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 10:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242564AbjFPIGR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 04:06:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232839AbjFPIGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 04:06:15 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 261122117
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 01:06:14 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9741caaf9d4so52960666b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 01:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686902772; x=1689494772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zAkJfVytg9CzxG53pb2zlwC5ThUsyhZUg21fZDixH3I=;
        b=Kbyhj97I3/HEj8VFofbslJmq109MGPcZMOQc7DBeTQzfWfgiG/E+4q7Y/hJqxy1RsM
         zM/T5R/2QtRzm+8v8ssTgSd8vJYL4OB1GnD5BfaoOxOPCNWR0I8BVHiv6acX+SnqsX/I
         w77gZzISM9cHVu/x2PVV8gPq+r9pQaPoMDWQPtsEGoOyiA3dR1ViRuO08zw0Da/w05sW
         xkxJ99pKm5aJCdeBt1lfKFV6A2QP5Xe2q4mTfUHtoQVt9a1WVxnDVH6qIoDelrDyOUWn
         0F1ob4+qicAhko5mt+dWD1OBlBpniy7Eg709w6upa1XNTwP/s+Idfnw6JlTMpZlVsTay
         EJlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686902772; x=1689494772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zAkJfVytg9CzxG53pb2zlwC5ThUsyhZUg21fZDixH3I=;
        b=bwmqTv6qdgGQ2cmU9ObByc9KzjMSrkwTOlbNRLaxRkBqmX6iMWQ9Eyveu2xuvPRX2q
         5mB+0kFRjUdvetzDeFhNNJkDIpJ6ghSIafo5r4YonjtpBo+a6Gk0+p4AQFpH+lCTGgi2
         i7c805IL6Ph/gRakuFM1zDlgRmAminS4dIYqGz1/BFAOk2Xe9CAtChV07YqOsX9PbEpY
         jggBS9aZhVeXWIFvEKYrYH1cSnJSsaihTi6tKCq4RjFs7e5M8VikGCAc1fl6oP2b92g0
         I4HomY28s3R4Ly5xTlsu1CrZLyyhlQ2FjJxdeOP4tzBz9DGAsfqE9zLb1euTUpEivuZ7
         KMRg==
X-Gm-Message-State: AC+VfDzgoxfb4Lydm94J4v8rEXB/OkdrxH4Y4XwGxW3ATN4hnh0ul4BL
        zPd1ejLGs6YjimIBHB2wBoK5fA==
X-Google-Smtp-Source: ACHHUZ50Ua5oIQX4P80cY6kLfN8X7uGCPFRhZLPCW0Cbt+uigbFp1VVaiWp6TArsE9CZvxgetLLB6Q==
X-Received: by 2002:a17:906:4a0b:b0:966:b4b:eb0 with SMTP id w11-20020a1709064a0b00b009660b4b0eb0mr822512eju.30.1686902772569;
        Fri, 16 Jun 2023 01:06:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id lf29-20020a170907175d00b009787062d21csm10414924ejc.77.2023.06.16.01.06.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 01:06:12 -0700 (PDT)
Message-ID: <8ef8ab1e-1c3d-2a42-f4de-75ece4c86c2a@linaro.org>
Date:   Fri, 16 Jun 2023 10:06:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: add TQMa93xxLA SOM
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>
Cc:     Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux@ew.tq-group.com
References: <20230616072005.1781043-1-alexander.stein@ew.tq-group.com>
 <20230616072005.1781043-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616072005.1781043-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 09:20, Alexander Stein wrote:
> From: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> 
> TQMa93xxLA is a SOM variant in the TQ-Systems GmbH TQMa93xx series using
> NXP i.MX93 CPU on an LGA type board.
> MBa93xxCA is a starterkit base board for TQMa93xxLA on an adapter board.
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

