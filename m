Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CCA355D309
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:11:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231958AbiF0IMh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 04:12:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233560AbiF0IMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 04:12:37 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A01A56160
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 01:12:35 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <bst@pengutronix.de>)
        id 1o5jrF-0007fD-04; Mon, 27 Jun 2022 10:12:33 +0200
Message-ID: <0e7f616a-54ef-5b59-0068-87051189a7d7@pengutronix.de>
Date:   Mon, 27 Jun 2022 10:12:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH 2/2] drm/panel: simple: add AM-800600P5TMQW-TB8H
Content-Language: en-US
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org, kernel@pengutronix.de,
        devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
        Yannick Fertre <yannick.fertre@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>
References: <20220610111511.1421067-1-bst@pengutronix.de>
 <20220610111511.1421067-2-bst@pengutronix.de> <YrYWkdqZG1sazr2N@ravnborg.org>
From:   Bastian Krause <bst@pengutronix.de>
In-Reply-To: <YrYWkdqZG1sazr2N@ravnborg.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: bst@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Sam,

On 6/24/22 21:54, Sam Ravnborg wrote:
> On Fri, Jun 10, 2022 at 01:15:11PM +0200, Bastian Krause wrote:
>> Add support for the Ampire AM-800600P5TMQW-TB8H 800x600 panel. Data
>> sheet is currently not publicly available, unfortunately.
>>
>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> 
> Applied to drm-misc (drm-misc-next).
> When applying I fixed up the compatible to match the binding.
> You may need to fix your DT files if they used the old compatible.
> The one from the binding had a dash like similar panels, so that is
> the one I picked.

Thanks! I changed the compatible in the yaml binding to resemble the
other Ampire compabibles, but forgot to change that in the actual code,
of course..

> See below for the fix-up.
> 
> 	Sam
> 
>> ---
>>   drivers/gpu/drm/panel/panel-simple.c | 33 ++++++++++++++++++++++++++++
>>   1 file changed, 33 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
>> index 4a2e580a2f7b7..3a61873dd887c 100644
>> --- a/drivers/gpu/drm/panel/panel-simple.c
>> +++ b/drivers/gpu/drm/panel/panel-simple.c
>> @@ -778,6 +778,36 @@ static const struct panel_desc ampire_am800480r3tmqwa1h = {
>>   	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
>>   };
>>   
>> +static const struct display_timing ampire_am800600p5tmqw_tb8h_timing = {
>> +	.pixelclock = { 34500000, 39600000, 50400000 },
>> +	.hactive = { 800, 800, 800 },
>> +	.hfront_porch = { 12, 112, 312 },
>> +	.hback_porch = { 87, 87, 48 },
>> +	.hsync_len = { 1, 1, 40 },
>> +	.vactive = { 600, 600, 600 },
>> +	.vfront_porch = { 1, 21, 61 },
>> +	.vback_porch = { 38, 38, 19 },
>> +	.vsync_len = { 1, 1, 20 },
>> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
>> +		DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
>> +		DISPLAY_FLAGS_SYNC_POSEDGE,
>> +};
>> +
>> +static const struct panel_desc ampire_am800600p5tmqwtb8h = {
>> +	.timings = &ampire_am800600p5tmqw_tb8h_timing,
>> +	.num_timings = 1,
>> +	.bpc = 6,
>> +	.size = {
>> +		.width = 162,
>> +		.height = 122,
>> +	},
>> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
>> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
>> +		DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
>> +		DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
>> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
>> +};
>> +
>>   static const struct display_timing santek_st0700i5y_rbslw_f_timing = {
>>   	.pixelclock = { 26400000, 33300000, 46800000 },
>>   	.hactive = { 800, 800, 800 },
>> @@ -3754,6 +3784,9 @@ static const struct of_device_id platform_of_match[] = {
>>   	}, {
>>   		.compatible = "ampire,am800480r3tmqwa1h",
>>   		.data = &ampire_am800480r3tmqwa1h,
>> +	}, {
>> +		.compatible = "ampire,am800600p5tmqwtb8h",
> was changed to
>> +		.compatible = "ampire,am800600p5tmqw-tb8h",
>> +		.data = &ampire_am800600p5tmqwtb8h,

Your fixup is correct.

Regards,
Bastian

>>   	}, {
>>   		.compatible = "arm,rtsm-display",
>>   		.data = &arm_rtsm,
>> -- 
>> 2.30.2
>>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
