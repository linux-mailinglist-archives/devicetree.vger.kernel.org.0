Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EB7A3B040C
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 14:16:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231463AbhFVMSy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Jun 2021 08:18:54 -0400
Received: from vps5.brixit.nl ([192.81.221.234]:50212 "EHLO vps5.brixit.nl"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231442AbhFVMSx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 22 Jun 2021 08:18:53 -0400
X-Greylist: delayed 444 seconds by postgrey-1.27 at vger.kernel.org; Tue, 22 Jun 2021 08:18:53 EDT
Received: from [192.168.20.2] (unknown [77.239.252.99])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by vps5.brixit.nl (Postfix) with ESMTPSA id EC65E607E3;
        Tue, 22 Jun 2021 12:09:08 +0000 (UTC)
Subject: Re: [PATCH 1/1] arm64: dts: qcom: msm8994-angler: Disable
 memory@3800000
To:     Petr Vorel <petr.vorel@gmail.com>, linux-arm-msm@vger.kernel.org
Cc:     Konrad Dybcio <konradybcio@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20210622034408.24904-1-petr.vorel@gmail.com>
From:   Alexey Minnekhanov <alexeymin@postmarketos.org>
Message-ID: <64fb868d-0e9c-9777-8058-47f72306e2dc@postmarketos.org>
Date:   Tue, 22 Jun 2021 15:09:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210622034408.24904-1-petr.vorel@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

22.06.2021 06:44, Petr Vorel:> Hi,
> 
> not sure if cont_splash_mem memory@3800000 is msm8994 specific.
> BTW I haven't found it in LineageOS git [1]
> 
> Maybe it should go to msm8994-sony-xperia-kitakami.dtsi.
> And I suppose it breaks also bullhead, thus this probably should go also
> to msm8992-bullhead-rev-101.dts.

Moving reserved-memory nodes from SoC level .dtsi files to device 
specific .dts seems like a better idea, isn't it? Maybe not all of them, 
but some seem to be device-specific and should not be in .dtsi at all.

-- 
Regards
Alexey Minnekhanov
postmarketOS developer
https://www.postmarketos.org
