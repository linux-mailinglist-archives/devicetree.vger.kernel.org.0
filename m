Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94BA957CA97
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 14:25:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229497AbiGUMZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 08:25:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232158AbiGUMZD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 08:25:03 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 642226EE99
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 05:25:01 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 19C178410E;
        Thu, 21 Jul 2022 14:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1658406298;
        bh=kVU3LCCaFqk6ZRlu2YlBGkJm43796tQBABKUWsWvgyA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=lJkhS2z7Eay4/EyRmaOHPrcAmsRzW+H24EaW0OW7JTXB5xPoHL0TGkOuNd1HkQ3iE
         GKymbc3rQpwjYXgxpX7KAmxt7OPO8cX577qQo/ejqrfn6NVSKqLGfgxyXJb+gydH8m
         jGkNH18g4hh2R05CZd2J9ow3ML7zUuT3n2XVWHirD8PGT1/rumVJFpT2MEL+Z7yhAG
         Af9mEGUWTEW4xI22ijSJNwmhHsO4MtdQuxj7z7PeHhdPCH51xdmMGhS0379ZQi6BfK
         Xf+sI9a6msiHxzrnN/S+dP5Jc0rRaLG8j9+F6fv+jNuaS1R3G7NgKzF7W8XQk8bpa7
         upX0ONPqIgF8g==
Message-ID: <0b4927f7-f1e4-60a8-1eaf-6d4cbc38daec@denx.de>
Date:   Thu, 21 Jul 2022 14:24:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Densitron
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     devicetree@vger.kernel.org, robert.foss@linaro.org,
        dri-devel@lists.freedesktop.org,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
References: <20220721030327.210950-1-marex@denx.de>
 <YtjnFxA66V6bMePa@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YtjnFxA66V6bMePa@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/21/22 07:41, Laurent Pinchart wrote:
> Hi Marek,
> 
> Thank you for the patch.
> 
> On Thu, Jul 21, 2022 at 05:03:27AM +0200, Marek Vasut wrote:
>> Densitron is a manufacturer of LCD panels.
>> https://www.densitron.com
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Guido Günther <agx@sigxcpu.org>
>> Cc: Jagan Teki <jagan@amarulasolutions.com>
>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> Cc: Linus Walleij <linus.walleij@linaro.org>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Sam Ravnborg <sam@ravnborg.org>
>> Cc: Thierry Reding <thierry.reding@gmail.com>
>> ---
>>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> index 88859dd4040ee..6277240536b44 100644
>> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> @@ -312,6 +312,8 @@ patternProperties:
>>       description: Dell Inc.
>>     "^delta,.*":
>>       description: Delta Electronics, Inc.
>> +  "^densitron,.*":
> 
> How about "dsn", to follow the practice of using stock names as vendor
> prefixes ?

Is there any benefit to that ? All I can see is that it's making DTS 
less clear and more difficult to read. It is easy to map "densitron" to 
"densitron" when it is spelled out like so in the DT, but it sure isn't 
immediately obvious that "dsn" means "densitron" without extra look up. 
And even that extra look up of "dsn" does not return densitron, but some 
woodworking company and other totally unrelated results.
