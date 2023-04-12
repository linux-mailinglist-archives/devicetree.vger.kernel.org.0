Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44F9D6DFDE8
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 20:47:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbjDLSrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 14:47:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbjDLSrl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 14:47:41 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4805840E1
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 11:47:31 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 1019D85FB2;
        Wed, 12 Apr 2023 20:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1681325249;
        bh=EtZZqzZL2vJAf9fyVdNPVZrxI5cAm4RiU1gbQP4NE+8=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=GgqWufzouxctSPf+epllIXpkN9PapbNIURu6tAFJD1M/oiQaKmTGxhkRdm2O2GwnI
         D52tlsMrvK9WeYupVftkKBumP3sS/ODeDsPMvYZBDU/18PQu9WOnEy0yePl5PCl0sV
         rkX0LzYemZ5UpC2aTvBBihgvUV27xvZOzrPyZkZtWWVU2cC/bChUhEo+fBkfeMcDpm
         Wu4X1F1mBYdh68EakzNny3wThNtKMwnFJXSu8lbIeNFW91UpMIERjUQFKYpTo2m2an
         jHGmzlrRRwyWUXB6PF+YLQsPS+UvsoBR3bZ45WFiYXb5vIpOrBFfCWcFkqTtXnx1GO
         RWp7nlRj2mp1Q==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 12 Apr 2023 15:47:28 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Rob Herring <robh@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org,
        marex@denx.de, krzysztof.kozlowski+dt@linaro.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com
Subject: Re: [PATCH v2 1/2] dt-bindings: samsung,mipi-dsim: Add
 'lane-polarities'
In-Reply-To: <20230412144300.GA2328336-robh@kernel.org>
References: <20230406190354.1641352-1-festevam@gmail.com>
 <20230412144300.GA2328336-robh@kernel.org>
Message-ID: <4455923593064a4ad5b39a9030ded528@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 12/04/2023 11:43, Rob Herring wrote:

> No, this should be video-interfaces.yaml since you use properties from
> it.

Ok, will change it.

> 
>> +            unevaluatedProperties: false
>> +
>> +            properties:
>> +              data-lanes:
>> +                oneOf:
>> +                  - minItems: 1
>> +                    maxItems: 4
>> +                    uniqueItems: true
>> +                    items:
>> +                      enum: [ 1, 2, 3, 4 ]
> 
> The h/w really supports any combination of lanes to be used?

The MIPI DSIM IP supports the usage of 1, 2, 3, or 4 data lanes.

The following cases are possible:

data-lanes = <1>;
data-lanes = <1 2>;
data-lanes = <1 2 3>;
data-lanes = <1 2 3 4>;

Lane reordering is not supported.

> 
>> +                    description:
>> +                      See ../../media/video-interfaces.yaml for 
>> details.
>> +
>> +              lane-polarities:
>> +                minItems: 1
>> +                maxItems: 5
>> +                items:
>> +                  enum: [ 0, 1 ]
>> +                description:
>> +                  See ../../media/video-interfaces.yaml for details.
>> +                  The Samsung MIPI DSI IP requires that all the data 
>> lanes have
>> +                  the same polarity.
> 
> Sounds like a constraint:
> 
> oneOf:
>   - items:
>       const: 0
>   - items:
>       const: 1

Imagine a board that has 4 data lanes and only the clock lane is 
inverted.

The representation is (the first entry is the clock lane, followed by 
the 4 data lanes):

lane-polarities = <1 0 0 0 0>;

If the board has no inversion on the clock lane, and has the data lanes 
inverted:

lane-polarities = <0 1 1 1 1>;

Should I keep the data-lanes and lane-polarities description as in this 
patch?

Please advise.

Thanks,

Fabio Estevam
