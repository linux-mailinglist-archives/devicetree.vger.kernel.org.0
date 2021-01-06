Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E80532EBBFB
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 10:57:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726795AbhAFJ4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 04:56:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726707AbhAFJ4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 04:56:06 -0500
Received: from yawp.biot.com (yawp.biot.com [IPv6:2a01:4f8:10a:8e::fce2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1833EC06134D
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 01:55:26 -0800 (PST)
Received: from debian-spamd by yawp.biot.com with sa-checked (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1kx5XI-00Bvkg-Br
        for devicetree@vger.kernel.org; Wed, 06 Jan 2021 10:55:24 +0100
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on yawp
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,HELO_MISC_IP,
        RDNS_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.4
Received: from [85.234.217.28] (helo=[10.0.1.5])
        by yawp.biot.com with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1kx5Wp-00BvjI-AB; Wed, 06 Jan 2021 10:54:55 +0100
Subject: Re: [PATCH v2 1/2] dt-bindings: interrupt-controller: Add Realtek
 RTL838x/RTL839x support
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, John Crispin <john@phrozen.org>,
        Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
        Birger Koblitz <mail@birger-koblitz.de>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>
References: <20210104131755.2979203-1-bert@biot.com>
 <20210104131755.2979203-2-bert@biot.com>
 <1609866288.019144.372417.nullmailer@robh.at.kernel.org>
From:   Bert Vermeulen <bert@biot.com>
Message-ID: <f5333394-8141-64ed-de30-d3b095ef579e@biot.com>
Date:   Wed, 6 Jan 2021 10:54:54 +0100
MIME-Version: 1.0
In-Reply-To: <1609866288.019144.372417.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/5/21 6:04 PM, Rob Herring wrote:
> On Mon, 04 Jan 2021 14:17:54 +0100, Bert Vermeulen wrote:
>> Signed-off-by: Bert Vermeulen <bert@biot.com>
>> ---
>>  .../realtek,rtl-intc.yaml                     | 57 +++++++++++++++++++
>>  1 file changed, 57 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtl-intc.yaml
>> 
> 
> My bot found errors running 'make dt_binding_check' on your patch:

I fixed the syntax error that caused this to fail. But running the test now 
produces some errors that are not so obvious:

   interrupt-controller@3000: interrupt-map: [[31, 4294967295, 2], [30, 
4294967295, 1], [29, 4294967295, 5]] is too short

Not sure where this comes from, but running dt-validate -v gives this:

   Failed validating 'minItems' in schema['properties']['interrupt-map']:
     {'maxItems': 24, 'minItems': 24}

Where did that 24 come from? I don't even have 24 initerrupts to map :-)

Another error is this:

   interrupt-controller@3000: 'interrupt-map-mask' is a dependency of 
'interrupt-map'

I can see this in your dtschema package's schemas/interrupt-controller.yaml 
where it's defined as a dependency, but why? I don't need that property.


-- 
Bert Vermeulen
bert@biot.com
