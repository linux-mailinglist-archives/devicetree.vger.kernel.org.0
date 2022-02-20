Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F2744BCEFF
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 15:35:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241497AbiBTOTj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 09:19:39 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:47216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239245AbiBTOTj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 09:19:39 -0500
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F14AE3B54D
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 06:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=xVgYaid1TgLKd3hqSmNU1CwEHT+VxWW/HyJZrkuDY1A=; b=dJ4zWhUEog6SUm26G9WIvd/muh
        aJ/3CUm2k5BeLoRpU9A6ONs5ZSM8vtoul4PYXqArdq7OuakZkAWCTlCP4DzN+V7Nj1Gjh6OeHgAgE
        gyz3uwyesd0m50RW/oPvAkUOOtX6xjoYd8OrrEyxKIRsk2jx+SIaGqSf3KPzmMuKb+skkVkhEAOF7
        e0vCbUEcsOZugV5G0ddQoEC4JrlpkvlAwYLcwju8174AV7lVqYQbw3cHlZ2jBYv/OG7gY9CR1SPOO
        pAfspCSfY5Pi/itWmaxamXw1ETEeAZcXEsJVxMr80PnNw9Joh5pnL3OrST9hAlizbc9KMqyb/ILJZ
        P/2u8nVA==;
Received: from [2a01:799:95e:a400:cca0:57ac:c55d:a485] (port=55828)
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1nLn3T-0004HZ-34; Sun, 20 Feb 2022 15:19:15 +0100
Message-ID: <35cd42a3-5183-2f21-8728-ee9d65dd1740@tronnes.org>
Date:   Sun, 20 Feb 2022 15:19:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH v4 3/3] drm/tiny: Add MIPI DBI compatible SPI driver
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, david@lechnology.com,
        dave.stevenson@raspberrypi.com, dri-devel@lists.freedesktop.org,
        robh+dt@kernel.org, thierry.reding@gmail.com, maxime@cerno.tech
References: <20220218151110.11316-1-noralf@tronnes.org>
 <20220218151110.11316-4-noralf@tronnes.org> <YhFqxklH9hsLrI1X@ravnborg.org>
 <YhISOrwTYsn2w6zo@ravnborg.org>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <YhISOrwTYsn2w6zo@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Den 20.02.2022 11.04, skrev Sam Ravnborg:
> Hi Noralf,
> 
>>> +static int panel_mipi_dbi_get_mode(struct mipi_dbi_dev *dbidev, struct drm_display_mode *mode)
>>> +{
>>> +	struct device *dev = dbidev->drm.dev;
>>> +	u32 width_mm = 0, height_mm = 0;
>>> +	struct display_timing timing;
>>> +	struct videomode vm;
>>> +	int ret;
>>> +
>>> +	ret = of_get_display_timing(dev->of_node, "panel-timing", &timing);
>>> +	if (ret) {
>>> +		dev_err(dev, "%pOF: failed to get panel-timing (error=%d)\n", dev->of_node, ret);
>>> +		return ret;
>>> +	}
>>> +
>>> +	videomode_from_timing(&timing, &vm);
>>> +
>>> +	if (!vm.hactive || vm.hfront_porch || vm.hsync_len ||
>>> +	    (vm.hback_porch + vm.hactive) > 0xffff ||
>>> +	    !vm.vactive || vm.vfront_porch || vm.vsync_len ||
>>> +	    (vm.vback_porch + vm.vactive) > 0xffff ||
>>> +	    vm.flags) {
>>> +		dev_err(dev, "%pOF: panel-timing out of bounds\n", dev->of_node);
>>> +		return -EINVAL;
>>> +	}
>> We should have a helper that implements this. Maybe the display_timing
>> => display_mode helper could do it.
> 
> It would be nice with a drm_display_timing_to_mode() but that can come
> later - the comment above should not be understood that I consider it
> mandatory for this driver.
> 

I did consider adding an of_get_drm_panel_mode() fashioned after
of_get_drm_display_mode() but I didn't find any other driver that would
actually be able to use it and I would have to do some substraction to
get back the {h,v}front_porch values that I need and the optional pixel
clock calculation becomes more complex acting from a drm_display_mode so
I decided against it.

Looking at it now, what I could do is add a function like what
of_get_videomode() does for "display-timings":

/**
 * of_get_panel_videomode - get the panel-timing videomode from devicetree
 * @np: devicenode containing the panel-timing subnode
 * @vm: returns the videomode
 *
 * Returns:
 * Zero on success, negative error code on failure.
 **/
int of_get_panel_videomode(struct device_node *np, struct videomode *vm)
{
	struct display_timing timing;
	int ret;

	ret = of_get_display_timing(np, "panel-timing", &timing);
	if (ret)
		return ret;

	videomode_from_timing(&timing, vm);

	return 0;
}

This could also be used by panel-lvds and 2 fbdev drivers, the other
panel-timing users need/use the display_timing itself, some for bounds
checking.

Noralf.
