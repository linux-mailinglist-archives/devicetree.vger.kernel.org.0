Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C5CF35505B
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 11:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237649AbhDFJws (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 05:52:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237380AbhDFJwr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Apr 2021 05:52:47 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 530B1C061756
        for <devicetree@vger.kernel.org>; Tue,  6 Apr 2021 02:52:40 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id f6so7416466wrv.12
        for <devicetree@vger.kernel.org>; Tue, 06 Apr 2021 02:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=dDAgVC/hqtt+LwQPewm7KFVU3XcpgxXGnKxS4+oobrk=;
        b=olzixRXpceJdgJMyBaF/lN+j9XoGyMEVh6iUBezfv53VUTu5BzAWi5AO71nxx4IMPn
         UgxnQxpAhA0hgRvDYFvsM+GntYXc9EditdVSpufCrU/LrGnFmsRDZMHbh95jatNlJhZY
         fQ3oPuQ+njUofZ8WQhxAlLYliUwYBpGUwOJmmsp+S62G0bzj7UegDgMziky5mNtoykBw
         9auCT2kbN7hUbJXaxzRVXQaAo5UR6N8sJxORM+W4bVIvANEkTmbAr8U4ZhPgNXG+RbPm
         6ODeOdQcH3j4VSXYQO1lkt0VCHuMO19c/f+6BCsONH75UtXUNosDGy3SYuW3T07OS6gq
         GVfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=dDAgVC/hqtt+LwQPewm7KFVU3XcpgxXGnKxS4+oobrk=;
        b=GtBs4ib9aV/LhNSJ7cNqWMe8288Uen936D3kZN0ShhyH4T91jBzmPo6F32+5UaM3vm
         V119St906NBdI5kO+QiIDo1GkhwB4ueyD+l0acWVaQQO24B1HpUxDXTPZhMt7aZUBYQv
         GTbwLB9+EpD2wvIV8wZHYRscUxkBCYn5aq+adqNWKSK7WX7Z4ylEk+sBNqf/BBUcxDV0
         GdJ47pVe7+FjmHZOPGez6X0pIzgcqbSqQsUNAGw2zFA/dqQJis4+ruKGW1A8H8aiZNdN
         K/WWGm5t+MZpiDyp6OB98fESlZz7YzDz6PmGVFPM9TvTRcgOexZ29kNoKtdA/kzOaTjg
         mUjQ==
X-Gm-Message-State: AOAM531v3StWiW8jKgA5/VfG2WnJ+mAPv+MJykukGTikHp8jC4RMuPb4
        dpYfrthY9/sgbczcOfTm1AfjhqNHRueLU4g5
X-Google-Smtp-Source: ABdhPJwSsT1j+ARlUiWUw4vcoH8DgHukopL8Ti3FdGHR71I9nXozDjiWHqsPO1O4pYVreB/x/mTkXg==
X-Received: by 2002:a5d:4203:: with SMTP id n3mr33269955wrq.116.1617702758797;
        Tue, 06 Apr 2021 02:52:38 -0700 (PDT)
Received: from wkz-x280 (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id y17sm1993784wmo.42.2021.04.06.02.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 02:52:38 -0700 (PDT)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     Rob Herring <robh@kernel.org>
Cc:     davem@davemloft.net, kuba@kernel.org, andrew@lunn.ch,
        vivien.didelot@gmail.com, f.fainelli@gmail.com, olteanv@gmail.com,
        netdev@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 3/3] dt-bindings: net: dsa: Document dsa,tag-protocol property
In-Reply-To: <20210327181343.GA339863@robh.at.kernel.org>
References: <20210326105648.2492411-1-tobias@waldekranz.com> <20210326105648.2492411-4-tobias@waldekranz.com> <20210327181343.GA339863@robh.at.kernel.org>
Date:   Tue, 06 Apr 2021 11:52:37 +0200
Message-ID: <87blarloyi.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Mar 27, 2021 at 12:13, Rob Herring <robh@kernel.org> wrote:
> On Fri, Mar 26, 2021 at 11:56:48AM +0100, Tobias Waldekranz wrote:
>> The 'dsa,tag-protocol' is used to force a switch tree to use a
>> particular tag protocol, typically because the Ethernet controller
>> that it is connected to is not compatible with the default one.
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  Documentation/devicetree/bindings/net/dsa/dsa.yaml | 7 +++++++
>>  1 file changed, 7 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/net/dsa/dsa.yaml b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
>> index 8a3494db4d8d..5dcfab049aa2 100644
>> --- a/Documentation/devicetree/bindings/net/dsa/dsa.yaml
>> +++ b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
>> @@ -70,6 +70,13 @@ patternProperties:
>>                device is what the switch port is connected to
>>              $ref: /schemas/types.yaml#/definitions/phandle
>>  
>> +          dsa,tag-protocol:
>
> 'dsa' is not a vendor.

It is not. The property is intended to be consumed by the
vendor-independent driver. So should it be linux,tag-protocol? Just
tag-protocol?

>> +            description:
>> +              Instead of the default, the switch will use this tag protocol if
>> +              possible. Useful when a device supports multiple protcols and
>> +              the default is incompatible with the Ethernet device.
>> +            $ref: /schemas/types.yaml#/definitions/string
>
> You need to define the possible strings.

Alright.

Andrew, Vladimir: I will just list dsa and edsa for now. If it is needed
on other devices, people can add them to the list after they have tested
their drivers. Fair?

>> +
>>            phy-handle: true
>>  
>>            phy-mode: true
>> -- 
>> 2.25.1
>> 
