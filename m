Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6E62056AE2
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 15:40:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727851AbfFZNkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 09:40:14 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:45305 "EHLO
        mail-io1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727481AbfFZNkO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 09:40:14 -0400
Received: by mail-io1-f41.google.com with SMTP id e3so5004118ioc.12
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 06:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zDJSWg5ZqCsJ5yHhPmNw6IFc7LwjzWq3duTJsoKkrKM=;
        b=HWPsJsqfLG0lhlY5cTRO5i5rf2tPrlezgfS7G1vF7LxmSrDtBQdmVYrAtOGRqfLWl8
         S79IvdIlvjOCcP3hoyDP4u0z0EMI86Ym56gezgYA705FegRzCrJ1JPUQ0gzx56zETgGM
         VnNvjp8PV0wqlW4N+OERnQ2sLv9lHlq9prCpGvofFJWw3Jli5lTiFb9S8dNw26TKFoWh
         JdxSNAc3ShF1yHw14WmEVVnKXUQSE3aRfCIJAgnEQUmd6MM6ewyJzpick7VJpleM/XYu
         RIWAAvVBIaaE1IPkfyQXMa52aSk91qmYrzt7BdUhYu036D9TA81RUtzNPrn7R3uoM6fh
         qm6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zDJSWg5ZqCsJ5yHhPmNw6IFc7LwjzWq3duTJsoKkrKM=;
        b=TtfVnkWzxVC+UPzwjmYSZBOErF3WWYMGGdFaD2sRyappiJHX+o+kiyDqrqjc8kBm2R
         lWN6YEMMSYt+1WysQE4s1CeuXAlOe/KRye8R4d8lgwOYipXWZ8zr8MucB7CJlcvpst9Z
         oSMUhDvJdVPIj829buxus+PvFqSqvSNav5iyOIsVB2YoT3/XqsmH8Z8Rpo6Ch4BjYhv8
         rX8QDY5pJtfav7N634bj4YI4uijrY4LjQBJ6NcCzR18vDGQOFg60iv48GzpScEc2e9bA
         7EbxWNiLzQCYe8frruEWmNJAdL3lzotNNcLQIx7/ISLOXqd5w8mmjQ9GRGBTgOfzbXFj
         x6bg==
X-Gm-Message-State: APjAAAV94FIdYt66qxQGujes6UV6gSu62gYEUkHPnbEPMjOzy4iLlyUt
        +uIdcHTWOIdIvj0UAZj3DDOQ2w==
X-Google-Smtp-Source: APXvYqyAGoIdJtF+Kp7+t7ui+rJKvjc5uZZhl3pY0W2IovmJ/5T+Oj0Z/PL/QiTfYvTtoBWtOpTWaQ==
X-Received: by 2002:a02:b10b:: with SMTP id r11mr4770745jah.140.1561556413496;
        Wed, 26 Jun 2019 06:40:13 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net. [71.195.29.92])
        by smtp.googlemail.com with ESMTPSA id h19sm22846256iol.65.2019.06.26.06.40.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Jun 2019 06:40:13 -0700 (PDT)
Subject: Re: WWAN Controller Framework (was IPA [PATCH v2 00/17])
To:     Johannes Berg <johannes@sipsolutions.net>, davem@davemloft.net,
        arnd@arndb.de, bjorn.andersson@linaro.org,
        ilias.apalodimas@linaro.org, Dan Williams <dcbw@redhat.com>
Cc:     evgreen@chromium.org, benchan@google.com, ejcaruso@google.com,
        cpratapa@codeaurora.org, syadagir@codeaurora.org,
        subashab@codeaurora.org, abhishek.esse@gmail.com,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
References: <20190531035348.7194-1-elder@linaro.org>
 <23ff4cce-1fee-98ab-3608-1fd09c2d97f1@linaro.org>
 <6dae9d1c-ceae-7e88-fe61-f4cda82820ea@linaro.org>
 <f1243295f088b70d48e4b832a28f79c0cd84ca1c.camel@sipsolutions.net>
From:   Alex Elder <elder@linaro.org>
Message-ID: <25bb0936-686c-101b-c5a4-474ed37536aa@linaro.org>
Date:   Wed, 26 Jun 2019 08:40:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <f1243295f088b70d48e4b832a28f79c0cd84ca1c.camel@sipsolutions.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/25/19 9:34 AM, Johannes Berg wrote:
> On Mon, 2019-06-24 at 12:06 -0500, Alex Elder wrote:
> 
>>> OK I want to try to organize a little more concisely some of the
>>> discussion on this, because there is a very large amount of volume
>>> to date and I think we need to try to narrow the focus back down
>>> again.
> 
> Sounds good to me!

. . .

>>> - A WWAN unit shall implement a *WWAN control function*, used to
>>>   manage the use of other WWAN functions, as well as the WWAN unit
>>>   itself.
> 
> I think here we need to be more careful. I don't know how you want to
> call it, but we actually have multiple levels of control here.

I completely agree with you.  From what I understand there exists
a control channel (or even more than one?) that serves a very
specific purpose in modem management.  The main reason I mention
the WWAN control function is that someone (maybe you) indicated
that a control channel automatically gets created.

But I agree, we need to be careful to avoid confusion here.

> You have
>  * hardware control, to control how you actually use the (multiple or
>    not) physical communication channel(s) to the WWAN unit
>  * this is partially exposed to userspace via the WWAN netlink family or
>    something like that, so userspace can create new netdevs to tx/rx
>    with the "data function" and to the network; note that it could be
>    one or multiple
>  * WWAN control, which is typically userspace communicating with the
>    WWAN control function in the WWAN unit, but this can take different
>    forms (as I mentioned earlier, e.g. AT commands, MBIM, QMI)
> 
>>> - The AP communicates with a WWAN function using a WWAN protocol.
> 
> Right, that's just device specific (IPA vs. Intel vs. ...)
> 
>>> - A WWAN physical channel can be *multiplexed*, in which case it
>>>   carries the data for one or more *WWAN logical channels*.
> 
> This ... depends a bit on how you exactly define a physical channel
> here. Is that, to you, the PCIe/USB link? In that case, yes, obviously
> you have only one physical channel for each WWAN unit.

I think that was what I was trying to capture.  There exists
one or more "physical" communication paths between the AP
and WWAN unit/modem.  And while one path *could* carry just
one type of traffic, it could also carry multiple logical
channels of traffic by multiplexing.

> However, I'd probably see this slightly differently, because e.g. the
> Intel modem has multiple DMA engines, and so you actually have multiple
> DMA rings to talk to the WWAN unit, and I'd have called each DMA ring a
> physical channel. And then, you just have a 1:1 from physical to logical
> channel since it doesn't actually carry a multiplexing protocol.

Understood.

. . .

> I only disagree slightly on the control planes (there are multiple, and
> multiple options for the "Control function" one), and on the whole
> notion of physical link/logical link/multiplexing which is device
> specific.
> 
>>> And if I understand it right, the purpose of the generic framework
>>> being discussed is to define a common mechanism for managing (i.e.,
>>> discovering, creating, destroying, querying, configuring, enabling,
>>> disabling, etc.) WWAN units and the functions they implement, along
>>> with the communication and logical channels used to communicate with
>>> them.
> 
> Well, some subset of that matrix, the framework won't actually destroy
> WWAN units I hope ;-)

Hardware self-destruct would be an optional behavior.

> But yes. I'd probably captured it in layers, and say that we have a
> 
> WWAN framework layer
>  - discover, query, configure WWAN units
>  - enable, disable channels to the functions inside the WWAN units
> 
> WWAN device driver
>  - implement (partial) API offered by WWAN framework layer to allow
>    these things
>    (sometimes may not allow creating more control or data channels for
>    example, and fixed function channels are precreated, but then can
>    still discover data about the device and configure the channels
>  - implement the device-specific protocols etc. necessary to achieve
>    this
> 
> Userspace
>  - uses control function channel (e.g. TTY) to talk directly to the WWAN
>    unit's control function
>  - uses WWAN framework APIs to create/configure/... (other) function
>    channels
>    (it may be necessary to create a control channel even, before being
>    able to use it, since different options (AT/MBIM/QMI) may be there
>  - configures netdevs (data function channels) after their creation

I don't think I have any argument with this.  I'm going to try to
put together something that goes beyond what I wrote in this message,
to try to capture what I think we agree on in a sort of loose design
document.

Thanks Johannes.

					-Alex
