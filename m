Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1EC5731961
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 14:59:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238789AbjFOM7J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 08:59:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245707AbjFOM7I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 08:59:08 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9E221BC9
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 05:59:05 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 184CE86262;
        Thu, 15 Jun 2023 14:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1686833937;
        bh=CoPVgQejVWEK8px9zanv04a/R6+DcHZDe3wrnocLwGk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=AAHpVA885KlCXOwz0Bca2C/rd5sN5PwLAUepIQ81rOIbuVSUX5T8x+Yz5N9Gv1tlp
         oynjcSho88nicLdLLN24CqNj5asv7194aWpb4w8CXMt03EB7ZrVNr/D1xc+ZLett1v
         DSM9GY9OjweZIKz3bBUitqVwHLWeRUYtNlsbRfRbEOdogpEV0cqxXAAD4Ow3XAm7KG
         5jodOIHak6BS3IrFQnW6L4I2J31+I1OnV/zjrRfy/qyKDQGJnfIK7CplcWETGuFwdZ
         ZzlnY2O1xX2eLpgy6a2Uh41/ZkRNfbJZmzUzOcj+xa0X4FyIway/sWP26vMK7hHinY
         lXlRz5i2230Bg==
Message-ID: <664102f3-e963-531a-5e39-b556ca132ece@denx.de>
Date:   Thu, 15 Jun 2023 14:58:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] ASoC: dt-bindings: audio-graph-card: Expand 'widgets'
 documentation
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org
References: <20230606175951.215740-1-marex@denx.de>
 <d40f2c63-0b8a-425e-90a9-dd8f552ba782@sirena.org.uk>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <d40f2c63-0b8a-425e-90a9-dd8f552ba782@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE,T_SPF_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/6/23 20:25, Mark Brown wrote:
> On Tue, Jun 06, 2023 at 07:59:51PM +0200, Marek Vasut wrote:
> 
>> Document the encoding of 'widgets' property to avoid confusion.
> 
>>     widgets:
>> -    description: User specified audio sound widgets.
>> +    description: |
>> +      User specified audio sound widgets.
>> +      Each entry is a pair of strings, the first being the type of
>> +      widget ("Microphone", "Line", "Headphone", "Speaker"), the
>> +      second being the machine specific name for the widget.
> 
> This looks sensible to me, I don't know if there's a way we can get the
> tooling to validate either the length or (ideally) the widget type
> strings?

It seems there is no way to do validation of every two elements for 
lists with variable number of elements.
