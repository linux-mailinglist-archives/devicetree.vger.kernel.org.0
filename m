Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66A706B657B
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 12:32:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbjCLLcd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 07:32:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbjCLLcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 07:32:32 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4818153DAD
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:32:12 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id cn21so7789757edb.0
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678620691;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cr42kcaharXx2QRFlpWoe74NVUOdmsTZyVPBJTpygf4=;
        b=hQecZn/ly4IBjxkim9gJavyByugCZ8UKQy6hvrqJjW0FYyLCW+cQvUvFvokmWjBNsE
         7lT/2dj3CPqWNRRZEXX3bGxvPIti3myf1dse8nKcwtv+ciDY+riHxbTqyCrik+Xh6tIV
         bHRyHP/J+7HhVTPgQzrO3aobuc87c0f7pw2tdX8E3Sqb3RnIlSdF9Qfp84p73rc9g5it
         jZ2rsBxdIPBrcwhwjrWggoM3d+dn9U26j3S4cWDm1y/cL7p8pSYsh+B8hDRubvPhJQuM
         g5+J01VJUS/kgacl6Ycdz7J9gChKgFrPuag5iPyzZg3YOWxphwjMIkY6vlxhifbrLC5a
         f/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678620691;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cr42kcaharXx2QRFlpWoe74NVUOdmsTZyVPBJTpygf4=;
        b=lMD24MtNuRaf+z/xez0f6QYwd0aC8nq3Zqrr6z5qsbBtIx81PvpBYNoscQpupJYUXN
         WPDg1Sl7oeEB2M60GNSB53udI6UI4o8FcKwBTveDJQLPzZh3p+aS5YZmUfBUHcONApRi
         UMUJkCqw3A5eE+eTkvoz4KrPvoGobIZJuroovvqCylf0J//4pyx9BrCTlfUZwJ9Vdhb3
         KnN8AT2QmGmu0IYUF2UE7RAJsy03o7LZ6AlIAOaVO+zFlaD0NjvIMaaYWlO/uTNmxf7+
         74vG3KmrGekzrhohBSCmnmkB1EGpvrfGiOh11cPewmVVJsuqB+OQaqd+aQbLtQIinFBE
         TF3Q==
X-Gm-Message-State: AO0yUKX2sLOZ6V7vXqvTyvG5EEN3944+pHPZbZWXSul3TikZGgXkBCqf
        uOFx+ktj0+IqziSEyP92Wf5mLA==
X-Google-Smtp-Source: AK7set8qbCyOZY99qFz7FnkwgjDP4VF0PZfxCulPh0hKCVOGTi5xdhcGZzImnweWu7luxjwXeV1jVQ==
X-Received: by 2002:a17:907:9713:b0:861:7a02:1046 with SMTP id jg19-20020a170907971300b008617a021046mr41936190ejc.37.1678620690994;
        Sun, 12 Mar 2023 04:31:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id vr3-20020a170906bfe300b008d4b6f086c9sm2125986ejb.185.2023.03.12.04.31.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 04:31:30 -0700 (PDT)
Message-ID: <33157da3-4ab5-11ae-9b65-b2ca9694bbc1@linaro.org>
Date:   Sun, 12 Mar 2023 12:31:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/7] dt-bindings: phy: rockchip: Add rk3588 compatible
 line
Content-Language: en-US
To:     Lucas Tanure <lucas.tanure@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof Wilczynski <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>
Cc:     Qu Wenruo <wqu@suse.com>,
        Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
 <20230310080518.78054-4-lucas.tanure@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230310080518.78054-4-lucas.tanure@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2023 09:05, Lucas Tanure wrote:
> RK3568 Naneng Combo Phy driver can support RK3588 with the additional
> clocks and initial configuration, so add the compatible line.
> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

