Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 484C036E52
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 10:17:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727113AbfFFIRJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 04:17:09 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:33925 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727108AbfFFIRI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 04:17:08 -0400
Received: by mail-lj1-f195.google.com with SMTP id j24so1139579ljg.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 01:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ms/3gXcMEPIWd0uNgXu5WibAfZ4H8Pur2jPfFPQc+aw=;
        b=riwQ1+rT5MbPfmvDMczw2lUSqrvicxWO50/VLtZVvnmRfXJ9OgR0n95tm2KkQymMYf
         06Rpk+zBqPsrZNEl2s/bbndS5Pc53pHSG/YgrePU0vOZOfGF28+vl9moIpllPD1VG9HJ
         Q4Pvr+mlOuAvwX+m80S+32t7yOpJuNqmQRDkWxX4XHqj6NkHIOLp8Jf9VC12yHdKjytb
         hQZROzCHtOVPCr/oJdtvaUhRpXcRElgNaZB6o0qtj3GfCRpkj8NSmOvYaiIvnquT2DK1
         Ne/suZjE8XizEOU988eK0Wk/Ru3tQot6icH91h0rS8w78Vh46t2QlN7Sr7LwGid5W/xZ
         EnDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ms/3gXcMEPIWd0uNgXu5WibAfZ4H8Pur2jPfFPQc+aw=;
        b=mAMibnQcIRMIXNJr/DC8zy2+jGYbQlYdCMotqmWozlyPSesE0eKxqBig+7gqCjjJHy
         tGamnYkb8c3el9vHYx9njVKS//ywp/veP3Waolig6v71eQoI4WQLEr3JbLQPpomHqI49
         gTs7KTRfgFeWOPRdByGR8jpe+PdBsPwL/UimvNNth7p6uhdgnvTZN41/UNuRgecT4Ivo
         L/d2Bo5abp1M12JcVEHjKfJ+62Yny8C43/S5Vv6ZSSoBGN3AflHCa53gd5wqOzPSdrJp
         Zb05VykwW0mlFhES70DmEYe/hCjRc3ORYL7JDSQU9veA8X/NvXs44T+ssDS09WgOmg/S
         dCmw==
X-Gm-Message-State: APjAAAU1tGaiiaZtpE2bCPiBFQmn/2yn0gBCgtFWw8vZ+pp44BfJcLBx
        6kUx8KU6BF2Z1R+2ovKx6WCysA==
X-Google-Smtp-Source: APXvYqxZrmtys7SbLSVyK9cD454Jm14C5G5I1bB8ztL7yOCjFzh1w/hKLJQj1dHM824bhIF+XDzmKw==
X-Received: by 2002:a2e:81c4:: with SMTP id s4mr11792430ljg.182.1559809025880;
        Thu, 06 Jun 2019 01:17:05 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.81.46])
        by smtp.gmail.com with ESMTPSA id b25sm184051lff.42.2019.06.06.01.17.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 01:17:05 -0700 (PDT)
Subject: Re: [RESEND][PATCH v3 1/2] usb: dwc3: Add avoiding vbus glitch happen
 during xhci reset
To:     Ran Wang <ran.wang_1@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Felipe Balbi <balbi@kernel.org>, Yang Li <pku.leo@gmail.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20190606025418.26313-1-ran.wang_1@nxp.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <78eb1558-b8d4-0632-ad0c-4144c711d2da@cogentembedded.com>
Date:   Thu, 6 Jun 2019 11:16:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606025418.26313-1-ran.wang_1@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 06.06.2019 5:54, Ran Wang wrote:

> When DWC3 is set to host mode by programming register DWC3_GCTL, VBUS
> (or its control signal) will turn on immediately on related Root Hub
> ports. Then the VBUS will be de-asserted for a little while during xhci
> reset (conducted by xhci driver) for a little while and back to normal.
> 
> This VBUS glitch might cause some USB devices emuration fail if kernel

    Enumeration. :-)

> boot with them connected. One SW workaround which can fix this is to
> program all PORTSC[PP] to 0 to turn off VBUS immediately after setting
> host mode in DWC3 driver(per signal measurement result, it will be too
> late to do it in xhci-plat.c or xhci.c).
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
[...]

MBR, Sergei
