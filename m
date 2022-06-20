Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BDF65526F9
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 00:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232815AbiFTWcA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 18:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231149AbiFTWcA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 18:32:00 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0137A1CFC5
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 15:31:58 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id y6so10944837plg.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 15:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=y1YASslqxPeWj4tLgrAs2r/KMPiyfed1heI0i0OfXbA=;
        b=eCvgEB4Qri+QBnGxoRakzacamRbi9a8j+ZzfMky/lAdWpSHcAsIQbhZXYrxJ3Rf2O6
         +1e9ZDgy2bpuxcC3yUEQHnhw1Vw/xxtrHvfOnIuIu9m+7Pr1VOOBdA//n6ztAk/HyWQK
         GInTrWgoNVn/iTS89VToQyzGLTTq4E6Ptkw6yXTQvp7yDWMceP5ZfWCpwbOEpeH2287k
         y1ix8DNQYUeo3Acj/lNo+otq5jD+DGyjYGLMjcQbKQKKfAIpVcAU15HOvELIR0ZaHLEG
         LE16k3bkyzO1/sXzEcTqp7h/zI4XLrgYymgA578GNkvAFHryaIpR3HgQMzFf9n1NyvlN
         T+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y1YASslqxPeWj4tLgrAs2r/KMPiyfed1heI0i0OfXbA=;
        b=Ir7PoRQwuXbkf8lWWB0cFNHmsuk/qpjggH69ostRKqqAO4sxpDWyZK2VjEHtiSzsmc
         PVk6nfofireStvWoYybf4YLs5CUnVR8cjmIBLI/u6NWTonI3KUon6a4f1mfF52t70WWY
         M+dYKkmTRe8YmVi2bsEexsgGhU0XKOmHaYMR80rTZfNxB4Is9i6zQvT3VkCEcEL4AIK1
         Qp8AjCakYdqJBt2EXi2NvlYllfOtp1CfXVqLgsSUL65gNZvIJpRQnn53iqb8xZcMEIl+
         CuBlNlwVnu6JzdaF4JZgHbwpRvNRPgxVPuHWZW0TQfJ15IkdcVwjfhZJzMVTAWJ33w7q
         +KXw==
X-Gm-Message-State: AJIora+aQVRbT1Ek0A62E9L+WfFu+tde8XAUsp1dfPeoOy5vNkn6URjx
        V6bmw1x8ero7kqDfxTh9uaw=
X-Google-Smtp-Source: AGRyM1tc9fM6l+gStJsgFXOs7JnZFz618L95fUV5jqHHNn8cC0eTMdN9ZN8gh2fbRXa22O7B/qc8Mw==
X-Received: by 2002:a17:90b:4382:b0:1ea:f4b6:1e29 with SMTP id in2-20020a17090b438200b001eaf4b61e29mr26972077pjb.159.1655764317397;
        Mon, 20 Jun 2022 15:31:57 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id x1-20020a170902820100b001690b65b2absm8393977pln.175.2022.06.20.15.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 15:31:56 -0700 (PDT)
Message-ID: <3c21ca65-81e7-bcc0-cf5c-5035ea2cb636@gmail.com>
Date:   Mon, 20 Jun 2022 15:31:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 1/2] dt-bindings: ARM: add bindings for the Meraki MR26
Content-Language: en-US
To:     Christian Lamparter <chunkeey@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
References: <20220617220029.1808063-1-chunkeey@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220617220029.1808063-1-chunkeey@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/17/22 15:00, Christian Lamparter wrote:
> mark the Meraki MR26 and its SoC (BCM53015) as supported
> in the bindings documentation file.
> 
> <https://jp.broadcom.com/products/embedded-and-networking-processors/communications/bcm5301x>
> 
> "BCM53011 and BCM53015 with dual-core Cortex-A9 CPU at 800 MHz,
> 256KB L2 cache, 16-bit DDR2 interface, USB3, integrated switch,
> GPHYs and packet accelerator"
> 
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> Acked-by: Rob Herring <robh@kernel.org>

Both applied, thanks Christian!
-- 
Florian
