Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63A316B384D
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:15:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbjCJIPK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:15:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230411AbjCJIOu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:14:50 -0500
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ED241707
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:14:49 -0800 (PST)
Received: from [192.168.86.246] (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: tanureal)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 6D9FA6603054;
        Fri, 10 Mar 2023 08:09:46 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1678435786;
        bh=nT15Xbs9vT95ITlLy4r3nhiWPDIIClF7WiwooWXw7Ag=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=GFiuCDeex5zkkrnzJVSJ7vT2Tfnek/kZnxeJTxlpn8vVd9eHrsnMupt9h+bJFSUmy
         FO11FGjNq9t0rN6lrZm8zhpKEghlj+y1m7TxP7ftluCFz7kNxf6UhR44im+8ybdkuV
         A2B7UUIszRUN/68jErlP+TqMiKH+vQ8TmhedkZDacR/24Kw6coAKCie1u6TA4JpQrg
         i2V3sSnnKRt9pY0Czene3TviXQk1oSG1Tsp2622qz81DRDwpJObF1J1KsRXu+pbw3k
         moy8J+w48JADGyTEZeY5eTUha19oLcNVMHvGgctqmlbejA3mDLykf19PDw89E4b63i
         XWD/EMfGzLfEQ==
Message-ID: <9e3fa2ad-6293-ef50-02f0-b106a363eb8c@collabora.com>
Date:   Fri, 10 Mar 2023 08:09:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
Content-Language: en-US
To:     Qu Wenruo <wqu@suse.com>,
        Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
 <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
 <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com>
 <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
 <CAMdYzYoWAjRQPCy_cuYH5VpMfnVR2_H+1-MNSKv0w6j-NpbORw@mail.gmail.com>
 <A539A994-7E2C-4B51-8BAB-32AE475607DD@gmail.com>
 <dff133d1-6a8b-a838-4c85-a8bb16c7a742@suse.com>
 <6024BC59-B1ED-441C-97F8-73688022F899@gmail.com>
 <d701239f-f844-e504-211e-d88de0ddac8d@suse.com>
From:   Lucas Tanure <lucas.tanure@collabora.com>
In-Reply-To: <d701239f-f844-e504-211e-d88de0ddac8d@suse.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10-03-2023 00:16, Qu Wenruo wrote:
> 
> 
> On 2023/3/9 21:00, Piotr Oniszczuk wrote:
>>
>>
>>> Wiadomość napisana przez Qu Wenruo <wqu@suse.com> w dniu 09.03.2023, 
>>> o godz. 13:17:
>>>
>>>
>>>
>>> Awesome! I can finally get rid of the stupid out-of-tree r8125 driver.
>>>
>>> Would definitely have a good look into the patches and provide some 
>>> feedbacks, just mind to share a git tree for easier reviewing?
>>>
>>>
>>
>> Ah - git tree... my distro builder uses model with: mainline src + 
>> patches - so effectively i don’t have git tree for this code…
>>
> 
> The ABS is fine if the number of patches is small, but when patches go 
> larger it can go a little out of control.
> 
> Never mind, I can still fetch the patches and find out what's the 
> difference for the PCIE2 naneng combo phy.
> 
> Just to mention, some kernel AUR also go git tree to simplify the PKGBUILD.
> 
> Thanks,
> Qu
Hi,

I just sent a patch series to support PCIe2 for RK3588s:
https://lore.kernel.org/lkml/20230310080518.78054-1-lucas.tanure@collabora.com/T/#t

The same patches are here:
https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/tree/wip_pcie2_rk3588

Thanks
Lucas
