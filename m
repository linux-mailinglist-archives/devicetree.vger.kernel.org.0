Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B20F56D1B8B
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 11:12:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232010AbjCaJMa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 05:12:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232014AbjCaJMQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 05:12:16 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B20651E711
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:12:11 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id p34so12471528wms.3
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680253930;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=i4thSwDiXLA3gkDJnYvjvujNMO/o2OKEhGcuq2D7Pfg=;
        b=VMr5dvyNW9RJTXlRTRQD+t+qBWvvOx8N43jhhw/m+GZ7M800L+4y2JTClbCQlZHu6g
         eAbAJmAbJDJMYqD2iHOCGoxncIpDIuEezgsfHbIzJXczP35KPR/Q5+ewjH4yNt2iAe/W
         XLWadnQUfhIg24Hr7vhMUdXknyj8kakRquJTKxVte7LSVqfaZ7qD2svT10jaBMeYPR7z
         RLRlYlcCS0XMOvYzRuPFNqqqci/OTNCN5r+9GaMWKHQSoU5S80wpid5zanBgt3as+8io
         q3guKA+Gaw4rBZ/mbCNWfJqU/S/zD5+0zGT9bQD091DMTtWc7hQw03BSfks6UrPcCkMo
         G4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680253930;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i4thSwDiXLA3gkDJnYvjvujNMO/o2OKEhGcuq2D7Pfg=;
        b=hJfkIc8etXwN2SNO1qZyqxJd3VJTdhs2WSXT0JlQEjWBYAU/G1xxuFK/pvU0E59wf0
         0CorzYKktX61kyKH1pp4o5K4XbMP81xs53JkPU/6Mcy6Ex8QU8cleJ3dL90y1VlqvKLv
         3gaIPGX5Eq33HE7EWE+uFFx1T/VSDsItrMXmHmhEx4jjVEwxqsmTdE4JHJMNKBZSsJ8G
         RbQAoNOWMkkR41xa5ngjlP/RSnCvkEyuGNtLsDp5cvW5QXehnNgeZx9uTxITXM//66+L
         TM1iSv4oPJpJEzkmfRTcX/7t+BAt9PD8UkCF0BVIXuhAuVD0Ye8IZCc9glwl4vhkh79d
         HT5g==
X-Gm-Message-State: AO0yUKVwMmPRUoXvWkEOQGH8mxRsOnypMYnYJhITGRRgWYeyE92BHggH
        4/T43icYIIzDvWo0d15f+YOinw==
X-Google-Smtp-Source: AK7set89SbsMZBaWTSeTQsZzf6AN0otVzApRZKiZpDJhgHdd/+5eZull8XGw1I0Q7dbrbrhLprOKqg==
X-Received: by 2002:a05:600c:2312:b0:3ee:b3bf:5f7c with SMTP id 18-20020a05600c231200b003eeb3bf5f7cmr20162839wmo.23.1680253929961;
        Fri, 31 Mar 2023 02:12:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:74cb:1a96:c994:e7e0? ([2a01:e0a:982:cbb0:74cb:1a96:c994:e7e0])
        by smtp.gmail.com with ESMTPSA id n2-20020a05600c4f8200b003ef5e5f93f5sm9141705wmq.19.2023.03.31.02.12.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 02:12:09 -0700 (PDT)
Message-ID: <fc931920-67cd-e776-8f4d-444ade4afcef@linaro.org>
Date:   Fri, 31 Mar 2023 11:12:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v7 10/12] drm/bridge: Implement enable_next_first to alter
 bridge init order
Content-Language: en-US
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Robert Foss <rfoss@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        linux-amarula <linux-amarula@amarulasolutions.com>
References: <20230329131929.1328612-1-jagan@amarulasolutions.com>
 <CAPY8ntCJP53uiGNQHUZqma08Vsxfwm7KvAkgMzK=hn4AxJLS3A@mail.gmail.com>
 <20230329164638.v43la4l7rxut6hk6@penduick>
 <CAMty3ZCsn6OR1-TvqFXP48iamG-k5sPU1_CH2fNLBQP3Ofb0QA@mail.gmail.com>
 <CAPY8ntCpmKPzPVjRWS7Pf1Fat9V_JqGD4BaMo8P8_o+74DeDiQ@mail.gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <CAPY8ntCpmKPzPVjRWS7Pf1Fat9V_JqGD4BaMo8P8_o+74DeDiQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 12:01, Dave Stevenson wrote:
> Hi Jagan
> 
> On Thu, 30 Mar 2023 at 07:56, Jagan Teki <jagan@amarulasolutions.com> wrote:
>>
>> On Wed, Mar 29, 2023 at 10:16 PM Maxime Ripard <maxime@cerno.tech> wrote:
>>>
>>> On Wed, Mar 29, 2023 at 05:28:28PM +0100, Dave Stevenson wrote:
>>>> On Wed, 29 Mar 2023 at 14:19, Jagan Teki <jagan@amarulasolutions.com> wrote:
>>>>>
>>>>> DSI sink devices typically send the MIPI-DCS commands to the DSI host
>>>>> via general MIPI_DSI_DCS read and write API.
>>>>>
>>>>> The classical DSI sequence mentioned that the DSI host receives MIPI-DCS
>>>>> commands from the DSI sink first in order to switch HS mode properly.
>>>>> Once the DSI host switches to HS mode any MIPI-DCS commands from the
>>>>> DSI sink are unfunctional.
>>>>
>>>> That statement contradicts the spec.
>>>> The DSI spec section 8.11.1 Transmission Packet Sequences says that
>>>> during any BLLP (Blanking or Low Power) period the host can do any of:
>>>> - remain in LP-11
>>>> - transmit one or more non-video packets from host to peripheral in escape mode
>>>> - transmit one or more non-video packets from host to peripheral in
>>>> using HS mode
>>>> - receive one or more packets from peripheral to host using escape mode
>>>> - transmit data on a different virtual channel.
>>>>
>>>> Indeed if the sink doesn't set MIPI_DSI_MODE_LPM /
>>>> MIPI_DSI_MSG_USE_LPM, then the expectation is that any data transfer
>>>> will be in HS mode.
>>>>
>>>> That makes me confused as to the need for this patch.
>>>
>>> Yeah, and it looks like that would break the expectation that, in
>>> enable, a bridge can expect its controller to be in HS mode.
>>>
>>> I think that was Jagan is trying to do is to work around an issue with
>>> the Allwinner DSI driver:
>>> https://elixir.bootlin.com/linux/v6.3-rc4/source/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c#L775
>>
>> Correct and I can see it seems to be a classic DSI sequence observed
>> in dw-mipi-dsi as well - based on Neil's comments.
>> https://lore.kernel.org/all/9aa3d19d-4378-aaf3-6857-c40be5d252c7@baylibre.com/
> 
> Neil's comments are from 2021, and his response would appear to be
> with regard the PHY power up sequence issues that
> pre_enable_prev_first should solve. The DSI host pre_enable can now be
> called before the sink's pre_enable, therefore allowing the PHY to be
> configured in pre_enable. Hacking the PHY init into mode_set is
> therefore not required.

Yes this part is not solved, but is seems the assumption the DSI controller
can switch to HS to LS & then to HS back after a command while in video mode
isn't true in the Allwinner's case. As I understood it's one of the problems.

We're hitting a limit of the DSI controller model in Linux where we cannot
express all the DSI capabilities (Video mode, Command mode, dynamic framerate
switching, DSC, ...) since from the Panel or Bridge PoV we're blind and
we do not know what are the features supported by the DSI controller and
we lack knowledge of any operation mode we must try to achieve.

> 
> I don't see any restriction in dw-mipi-dsi over when transfer can be
> called (as long as it is between pre_enable and post_disable), and it
> supports MIPI_DSI_MSG_USE_LPM for requesting the command be sent in
> either LP or HS mode.
> 
>> In fact, I did follow and initialize the command-mode mode_set which
>> set low-speed DCS and switch back to video-mode @enable and switch to
>> HS but could see the same issue as the host cannot accept DCS as
>> before (I might implement improper sequence, but not sure due to lack
>> of documentation). But this sequence has issues with calling
>> post_disable twice even on dw-mipi-dsi.
> 
> Calling up/down the bridge chain from within other bridge elements is
> going to have issues and shouldn't be necessary.
> 
> The comment in dw-mipi-dsi post_disable[1]
> * TODO Only way found to call panel-bridge post_disable &
> * panel unprepare before the dsi "final" disable...
> * This needs to be fixed in the drm_bridge framework and the API
> * needs to be updated to manage our own call chains...
> 
> It has now been fixed up with pre_enable_prev_first.
> 
> I seem to recall seeing a patchset for one of the DSI hosts (other
> than vc4) that was moving the init from mode_set to pre_enable - I
> think it is probably [2] for msm.
> 
> Cheers
>    Dave
> 
> [1] https://github.com/torvalds/linux/blob/master/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c#L862-L867
> [2] https://github.com/torvalds/linux/commit/ec7981e6c614254937b37ce0af9eac09901c05c5
> 
>> May be Neill, can comment here?
>>
>> Thanks,
>> Jagan.

