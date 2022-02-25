Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07F934C3A95
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 01:55:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236219AbiBYAz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 19:55:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231271AbiBYAz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 19:55:58 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A792556CE
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 16:55:27 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id o23so3182380pgk.13
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 16:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=E0yDytB1klFw5ssEg7rMWrHS7jimZMuMUXw0eolQOhM=;
        b=qk7Ygu3bfgcVSjkXJ0B8d1h9Z+/+wFI7fEJd099R2cO+5ISMk9H1ToAp9rXf1oNDO8
         LmTVZL9uVYWK2VhT6sicFRhsa8rDdekMKnLXMj8Al5QMrZIdIhh498zEv5kKyhcAu7SF
         bcDNKzQQpxH200SvkP+H2XhcDQdw18OvfQQ0Yoz4uPI6E4q47YJxjqRmGxNXmm1eeApI
         IY/1powuABi6kPZW3vBSx0lQmWnMCBYNbuZrLUD+CURpvQo0I4ynIoGHi/Dm3HJhYML4
         nnH00TVHAZebubGRDxCxkWNGGN99FdlMDGmntIFFjqdGrxf5f5lK5JILmgfcGh3WSh01
         a10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=E0yDytB1klFw5ssEg7rMWrHS7jimZMuMUXw0eolQOhM=;
        b=grd0w8foXNH5Q8osSlTW4Ilu5DWzZOa5Q9yFKazCXsyNI343j7a1rS7vnUScbpH02N
         B0lbsxnICs74uno0Rs7S6B6jYW5WJafQnmLqa+OGSrwXobLTot/444P6Rt08U2ub5La6
         hVHkTsKUi/JGW2FFLEhfm5bPhexpKBeamWwrE3MK8lQqG98sCCTn4SQvJgzBDHEqfYu0
         rys2OGyL/ZqIusWYu+5DJjJl5Lf10VpFMYnRZNhZOVH5sNOQg3jZ8AE8ma7ycgvB57Nw
         5WsotAH21uGc5nBQ4sW9aGAyPHbj3zKR1btSO8a+ad8gNTEVZ90VUwdeGj5kCCXjdygt
         aOGg==
X-Gm-Message-State: AOAM532rII7hRTP16qc/r8nPBEWZo/Us1rcRG6K6fMBpOPN7MmivzzIk
        iR8pXRD9Ul5CCOPBrfYAV9qV405e3hA=
X-Google-Smtp-Source: ABdhPJyV4yLHHD45uxpvLgp2uXbIZvqkaiiqZTgquzJtB8vFA57D8s9tE+2CmIIqelZpvB7baiSZXA==
X-Received: by 2002:a63:a80c:0:b0:374:2526:2d68 with SMTP id o12-20020a63a80c000000b0037425262d68mr4165502pgf.572.1645750526495;
        Thu, 24 Feb 2022 16:55:26 -0800 (PST)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id j16-20020a63e750000000b00373598b8cbfsm606297pgk.74.2022.02.24.16.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Feb 2022 16:55:25 -0800 (PST)
Message-ID: <495184bb-cfbc-57b2-f7c0-19e2d9ec0611@gmail.com>
Date:   Thu, 24 Feb 2022 16:55:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
Content-Language: en-US
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Cyril Brulebois <kibi@debian.org>,
        Maxime Ripard <maxime@cerno.tech>
References: <20211231115109.94626-1-uwe@kleine-koenig.org>
 <2540edbe-084e-802f-3533-0aa66ddc20ec@ideasonboard.com>
 <397bf7c2-da9f-a993-f8bb-5d6cbc6e87eb@gmail.com>
 <YecnebByrBplFEsU@pendragon.ideasonboard.com>
 <41d2ff4a-79eb-5071-3a35-efa8cccec074@kleine-koenig.org>
 <YedGVE6Ow+VLpaoS@pendragon.ideasonboard.com>
 <CAPY8ntBzd+JTOfKOT1_65XbHgKBCRPqc2=fPm-2WFFM8vsYJWQ@mail.gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <CAPY8ntBzd+JTOfKOT1_65XbHgKBCRPqc2=fPm-2WFFM8vsYJWQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/19/2022 1:44 AM, Dave Stevenson wrote:
> Hi Laurent and Uwe.
> 
> On Tue, 18 Jan 2022 at 22:59, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
>>
>> Hi Uwe,
>>
>> On Tue, Jan 18, 2022 at 11:41:19PM +0100, Uwe Kleine-König wrote:
>>> On 1/18/22 21:47, Laurent Pinchart wrote:
>>>> On Tue, Jan 18, 2022 at 12:00:50PM -0800, Florian Fainelli wrote:
>>>>> On 1/18/22 11:45 AM, Jean-Michel Hautbois wrote:
>>>>>> This is also needed for camera and display support.
>>>>>> I tested it successfully with imx219 + unicam on mainline.
>>>>>
>>>>> Thanks for testing, can you reply with a Tested-by tag so it could be
>>>>> applied to the commit message when this gets picked up?
>>>>
>>>> Well, this also points out that there's an issue: if the mux is needed
>>>> for other devices, it shouldn't be in bcm2711-rpi-cm4-io.dts :-) We
>>>> could move it to bcm2711-rpi.dtsi (so far all bcm2711-based boards use
>>>> either I/O pins 0+1 or 44+45)
>>>
>>> If I understand correctly it's not used on rpi-4-b, so bcm2711-rpi.dtsi
>>> would be wrong.
>>
>> rpi-4-b muxes I2C0 on pins 0+1 and 44+45. The latter is wired to the
>> camera connector, and used for the camera sensor. Same thing on rpi-cm4.
>> rpi-400 has no camera connector, but I believe the display I2C bus is
>> also on pins 44+45 (at least according to the downstream DT sources,
>> rpi-400 muxes I2C0 on 0+1 and 44+45 too).
> 
> Minor correction - Pi 400 has no camera or display connector.
> I'm double checking with the hardware folk, but AFAIK 44&45 aren't
> used for any other purpose, so leaving the i2c0mux defined to them
> doesn't cause any issues.
> 
> Camera and DSI display connectors on all Raspberry Pi regular boards
> share the same I2C GPIOs muxing. (The original Pi model A & B didn't
> route I2C to the display).
> On a CMIO board, CAM0 & DISP0 connectors share an I2C muxing (normally
> 0&1), and CAM1 & DISP1 connectors share a muxing (either 28&29, or
> 44&45).
> 
>>>> , or move it to per-board files.
>>>
>>> It is in an board file now?! So I don't understand your suggestion here.
>>
>> Sorry, I meant have it in per-board files, not more it there.
>>
>>>> In the
>>>> latter case, instead of duplicating the same block everywhere, it could
>>>> be moved to a .dtsi included in those board files. This is what the
>>>> downstream kernel does.
>>>
>>> How does it call the dtsi file? I wonder if that is sensible expecting
>>> that the devices on the bus are different for different boards?!
>>
>> Downstream has a bcm283x-rpi-i2c0mux_0_44.dtsi that just contains
>>
>> &i2c0mux {
>>          pinctrl-0 = <&i2c0_gpio0>;
>>          pinctrl-1 = <&i2c0_gpio44>;
>> };
>>
>> with i2c0mux defined in bcm283x.dtsi as
>>
>>          i2c0mux: i2c0mux {
>>                  compatible = "i2c-mux-pinctrl";
>>                  #address-cells = <1>;
>>                  #size-cells = <0>;
>>
>>                  i2c-parent = <&i2c0if>;
>>
>>                  pinctrl-names = "i2c0", "i2c_csi_dsi";
>>
>>                  status = "disabled";
>>
>>                  i2c0: i2c@0 {
>>                          reg = <0>;
>>                          #address-cells = <1>;
>>                          #size-cells = <0>;
>>                  };
>>
>>                  i2c_csi_dsi: i2c@1 {
>>                          reg = <1>;
>>                          #address-cells = <1>;
>>                          #size-cells = <0>;
>>                  };
>>          };
>>
>> The following board files #include "bcm283x-rpi-i2c0mux_0_44.dtsi":
>>
>> - bcm2710-rpi-3-b.dts
>> - bcm2710-rpi-3-b-plus.dts
>> - bcm2710-rpi-zero-2-w.dts
>> - bcm2711-rpi-400.dts
>> - bcm2711-rpi-4-b.dts
>> - bcm2711-rpi-4-b.dts.orig
>> - bcm2711-rpi-cm4.dts
> 
> For completeness, the earlier boards use a
> bcm283x-rpi-i2c0mux_0_28.dtsi file as they use GPIOs 28&29 for the
> camera & display I2C. If my memory serves correctly, it had to move to
> allow connecting the SDIO interface to the Wifi chip on the boards you
> list above.
> The one awkward one is the very original rev1 256MB Model B (and 128MB
> model A?) which routed GPIOs 2&3 and BSC1 to the camera connector.
> Life's never easy!
> 
>    Dave
> 
>> We don't have to replicate the exact same mechanism and use the same
>> names, but for rpi-4-b and rpi-cm4, to enable camera support (which
>> we're working on, Jean-Michel has posted a driver for the Unicam CSI-2
>> receiver to the linux-media mailing list, the ISP will follow), we need
>> the mux. Given that those two boards have a camera connector, I think it
>> makes sense to define the mux in a different file than
>> bcm2711-rpi-cm4-io.dts. The RTC node can stay in bcm2711-rpi-cm4-io.dts.

Uwe, were you going to follow Laurent's suggestion and create a specific 
file that other boards can include? You have a few more days before I 
sent the pull request for 5.18. Thanks!
-- 
Florian
