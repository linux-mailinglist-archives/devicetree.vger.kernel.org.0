Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73C3738FF5B
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 12:36:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbhEYKi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 06:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbhEYKiV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 06:38:21 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F7F6C06138B
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 03:33:55 -0700 (PDT)
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A4B6881D3B;
        Tue, 25 May 2021 12:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1621938834;
        bh=FrZB9pP2FX+eOO7t1blHlzk983PVEHd75porvYfLvws=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=wXojgol6LNAam9CMYQt+zRPTRnONR3BABHjQ7A2AnKEOZy6aq+pFDI/EHphMvQ4Bn
         SLUv7d195tYY0K77I5HgId0CVuaF116pSE/iEi8Nz3IM00RVjCJdTHbTzpL1WS9Mxz
         QVY7FSD1OaD8+9xLVQoHDUR6YepdazWZoq8QrBA/s3BwqGpNUDzniJnHLlNOaPnhFW
         JEb11mKDjQ+FPLQ0I+nOM7T5HkARbubz0TFVgmF6iIa9gJCkXA+YtcuRTXUD6m53DZ
         79V4doQtI0BvDLP1hTic/BZFkYu70YpS1KIHog2jriGYxL7+oc6r6mxuqCb5JfmmPx
         hpAVsaOnyv/vQ==
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: lvds-codec: Document
 LVDS data mapping select
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20210515204656.367442-1-marex@denx.de>
 <YKL1//4p/voXAR1q@pendragon.ideasonboard.com>
 <YKL2RGM1GRkceo/2@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <a0c66e0f-0403-9fa8-4220-a960418f7976@denx.de>
Date:   Tue, 25 May 2021 12:33:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <YKL2RGM1GRkceo/2@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/18/21 1:03 AM, Laurent Pinchart wrote:

[...]

>>> +if:
>>> +  not:
>>> +    properties:
>>> +      compatible:
>>> +        contains:
>>> +          const: lvds-decoder
>>> +then:
>>> +  properties:
>>> +    data-mapping: false
> 
> Should we make the property required for lvds-decoder ? We need to
> support backward compatibility in the driver, but from a DT bindings
> point of view, should all new DTs require the property ?

I think so.
