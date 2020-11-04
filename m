Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 302CC2A6429
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 13:21:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729250AbgKDMVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 07:21:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729179AbgKDMVm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 07:21:42 -0500
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFCE1C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 04:21:41 -0800 (PST)
Received: by mail-lj1-x244.google.com with SMTP id 11so3187703ljf.2
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 04:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jWpUOTFiS8vamzWvnGQ5aOvOUIOaTF43HJKhMTXxLrA=;
        b=RHoVhfFO+kVITT8og7bzNtjmhBmbTVZokb4HnicD+c1Huwp4s3LsOGpKku0jbxplnL
         gChDOaNpX0LCp2FVMN3349A1jyyk+gA23+ev0jzQArVo3cQd5LIBfswDfBTp+9FatMsE
         g7VavNIvLmoWnkB/DxUZklK4PJY2guFZR002PIRZEoGrlvNapaoqAHU2Z2hzvlX5/cPr
         lWiHSqSGErS/r5ng1GiPEwspxqxIwnhc1b3F9a3BYc359RuGFERJtHDaCYIuhnkEXmzY
         gvK0oLZ2l4XwhdEwHvHW3xPGbf32k6ezm1UdjN//vh40822xznh1NtWU+Fo5RR36fwxw
         Zqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jWpUOTFiS8vamzWvnGQ5aOvOUIOaTF43HJKhMTXxLrA=;
        b=KJqnpPhYAIhZ2XM2Oj3Ul6nJhtNb6oWIQGO4bT60QyIpOd+ADMXtlVxYasO/acpkjY
         ct0x8B/CDdpffqMKPL4Ho9fEo3JdAMhFE6Ha3yPf9YcvdW2U7dPMITQ6I3miF1YVE2E+
         Zz3J+QWjjH3cEDMI+m3sCqgNC+SyKHhbacIgrp5z//5GS33UL2s/XzR6G/7Kbi2mWhRF
         42tUYZHbBFouhu8YflN4HaUGD4YrP2cu8iQIZiPA7yq3adhHxysO6Rvd2WotH58Pu8WG
         MZHvN4GSqRVdiLDC+eDerkoJ2oPQAYm/LVSqraTmlROzzarhTF2lv+qTOhrQLET3ZSMk
         63yQ==
X-Gm-Message-State: AOAM532FExD5rx3oK2qWeivHko1JBrw5GH8K8klF/CyzlL1nxj85K15n
        LSfQCDJQo431AWJy7Wz6fEs=
X-Google-Smtp-Source: ABdhPJxn8wVpenINR40AJtp3n+Z9ZPb+Wq/mJCLjaFL18LVYFcYyi7BKLG7osFQqeT44thnktZiiiQ==
X-Received: by 2002:a2e:88c2:: with SMTP id a2mr10935997ljk.438.1604492500222;
        Wed, 04 Nov 2020 04:21:40 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id 70sm385436lfe.123.2020.11.04.04.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 04:21:39 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300
 early DTS files
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201028101123.6293-1-zajec5@gmail.com>
 <20201028101123.6293-2-zajec5@gmail.com>
 <65671fc4-96c8-aa88-543e-23f1fae6262d@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <9d6dd3e8-b746-48ec-5f35-5916558e35af@gmail.com>
Date:   Wed, 4 Nov 2020 13:21:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <65671fc4-96c8-aa88-543e-23f1fae6262d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04.11.2020 04:33, Florian Fainelli wrote:
>> +	gic: interrupt-controller@81000000 {
>> +		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
>> +		#interrupt-cells = <3>;
>> +		#address-cells = <0>;
> 
> You would want to create a node that encapsulates the ARM peripheral
> addresses within the SoC's physical address range, see
> arch/arm/boot/dts/bcm63138.dtsi for an example with the axi bus node.
> 
> [snip]

As a general note: putting interrupt-controller directly in the root node
seems to be (incorrectly I assume) done in about 1/3 of arm64 DTS files.

Guessing by indention level:

 > egrep $'^\t[a-z].*interrupt-controller' arch/arm64/boot/dts/*/*.dts* | wc -l
66

Just in case someone is looking for a minor cleanup task.
