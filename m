Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E04464DE2D
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 17:06:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbiLOQGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 11:06:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229848AbiLOQGd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 11:06:33 -0500
Received: from amity.mint.lgbt (vmi888983.contaboserver.net [149.102.157.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 166E32F64C
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 08:06:31 -0800 (PST)
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
        by amity.mint.lgbt (Postfix) with ESMTP id 4NXxtX4hBdz1S4tN
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 11:06:28 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
        content-transfer-encoding:content-type:in-reply-to:subject:from
        :references:to:content-language:user-agent:mime-version:date
        :message-id; s=dkim; t=1671120386; x=1671984387; bh=7D6doDStC7gK
        c0KFHyAb+1CP6XE+sVmchO92TAxtxJA=; b=D/uK2v1eabiogcudf5NjAg7m/nos
        bOvPiq7yrc0eWHIK28Gu0IyQ+KB4MAJbs2aAiJif0z/EWS78T4/gDxr6NXE/OlHS
        Zdd5RLTtIkcN1QHGcw4UAHCJhj3we1SxVH1MEKe1WZVXN5aEol05pEvwrKOTsVTa
        BxLsEsMqIXUnKKxUvDowkbx6HPA/aqnJnvTL+LJZHtcMMuf9nRQNi/wPGvMt68Wz
        nr4exZ/QUNAEPUm6Lx4IL03+toiXB3HmuHNoB2RdgwdawW2bwHhmTYNjBCnL0BGI
        K6yYxG2dJqnWzimYYuzmfQOmtB1Lbi2TwklxoTBNAHX3KYCeRUB2xgkz6A==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
        by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id LfIUkMr02kFm for <devicetree@vger.kernel.org>;
        Thu, 15 Dec 2022 11:06:26 -0500 (EST)
Received: from [192.168.4.25] (unknown [190.196.92.66])
        by amity.mint.lgbt (Postfix) with ESMTPSA id 4NXxtQ22Qbz1S4t9;
        Thu, 15 Dec 2022 11:06:21 -0500 (EST)
Message-ID: <4fb08532-47b5-b5e8-07ad-a5e3f42b93aa@mint.lgbt>
Date:   Thu, 15 Dec 2022 13:06:19 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221214093342.153479-1-they@mint.lgbt>
 <ea20c58f-3a53-7cdd-8669-228c4acac49a@linaro.org>
 <5a511002-5cd2-b95b-a45a-faaf78e2f4a7@mint.lgbt>
 <cd025494-862b-70ec-a008-4be219f7f72f@mint.lgbt>
 <245b1554-5f61-3f1b-c04e-fd8326e62e8e@linaro.org>
From:   Lux Aliaga <they@mint.lgbt>
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm6125: Initial support for
 xiaomi-laurel_sprout
In-Reply-To: <245b1554-5f61-3f1b-c04e-fd8326e62e8e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2022 05:31, Krzysztof Kozlowski wrote:

> On 14/12/2022 18:45, Lux Aliaga wrote:
>> Ok. I think that comment is incorrect. Changing the node name on
>> extcon_usb breaks the "extcon" property in &usb3_dwc3, even after
>> changing the reference.
> You top-post and I have no clue what do you refer to. Don't top-post.

My apologies. I replied a bit too quickly and didn't check if the 
concerns I proposed were redacted correctly. An email you sent already 
answered my concern, so I'll proceed to send a new version of the patchset.

Kind regards.

-- 
Lux Aliaga
https://nixgoat.me/

