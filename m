Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BE934C2E83
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 15:36:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232240AbiBXOhG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 09:37:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbiBXOhF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 09:37:05 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FB40C03
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 06:36:34 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 22EA41F44EFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1645713392;
        bh=a5HETx9RdGbA+U2GzdkhgfEme4Mq6cVTNkqDGzsr6CQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=AmfM8svSLgBD0m64Hmxuea3hI/8v+A+wcJ/0920+h5sCWJuax6L7rG2cym4TEbQFj
         +A4fHQmsSxWYBKrZRCJyv4Ahl8isE2+KeSE9wAKfBp5JFCJnGPxbR5vQNwt/2I4mxA
         aL+7fwJKkCL9XLJwNitTHsT8vWirjEDHg4kdAX7SM2HN1OEisEJJJyG8KZRzHa1Nlm
         MHqc37p3gGq5lNNPPNTjtJc02fkPpA9B/ZrI9G3snn6m/1WZV4IyCy5tNR6a0VZQYS
         F5qg5nOgfvtJGMeO/DPdRTN7jwu/sgsj7j7iU0gxfIKa5E2jUaWrhUeK4MFp5oiUZV
         ISNcUqkRGtNcg==
Message-ID: <a6f2b4a8-b9f0-dd2b-2361-8ede766b8394@collabora.com>
Date:   Thu, 24 Feb 2022 17:36:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-22-s.hauer@pengutronix.de>
 <b9b59c1d-5808-f348-62fb-257746df134d@collabora.com>
 <20220224074750.GR9136@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220224074750.GR9136@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/24/22 10:47, Sascha Hauer wrote:
> On Thu, Feb 17, 2022 at 04:24:29PM +0300, Dmitry Osipenko wrote:
>> 17.02.2022 11:29, Sascha Hauer пишет:
>>> @@ -28,6 +28,12 @@ config ROCKCHIP_VOP
>>>  	  This selects support for the VOP driver. You should enable it
>>>  	  on all older SoCs up to RK3399.
>>>  
>>> +config ROCKCHIP_VOP2
>>> +	bool "Rockchip VOP2 driver"
>>> +	help
>>> +	  This selects support for the VOP2 driver. You should enable it
>>> +	  on all newer SoCs beginning form RK3568.
>>
>> s/form/from/
>>
>> The ROCKCHIP_VOP option is "default y". Do you really want "default n"
>> for the VOP2?
> 
> ROCKCHIP_VOP is only default y to keep the VOP driver enabled for
> existing defconfig that were generated before the introduction of
> that symbol.
> We don't have this problem for VOP2, so no need to make it default y.

To me it will be more consistent of you'll have both defaulting to y,
since both options are behind DRM_ROCKCHIP.
