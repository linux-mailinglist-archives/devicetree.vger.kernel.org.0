Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F1FD269DFB
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 07:44:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726066AbgIOFoI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 01:44:08 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:30659 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726046AbgIOFoH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 15 Sep 2020 01:44:07 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1600148646; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Date: Message-ID: Subject: From: To: Sender;
 bh=ETaP2+qz0CODvhFUuFPdGk674915ZERfOirpId35Wrg=; b=W4voawNUoM1UBLp9qIdeMH6BmBI3/TTdVuf0MowomYf+t7jdXIl5wRNqh+hPyMo3w7SSPvvd
 2sJzUbVUaEkw2XRwILC4zCuHA9g4LDdJCwGc07NT3HQm2CRbMGB6SisemNf58UDnFLVtXpok
 TXjcBurNJd0NcdPOmNkTn9fWCfI=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 5f6054a632925f96e112793d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 15 Sep 2020 05:44:06
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 7D06CC433FE; Tue, 15 Sep 2020 05:44:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from [192.168.1.101] (unknown [49.207.203.93])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: rnayak)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 85BEAC433CA;
        Tue, 15 Sep 2020 05:44:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 85BEAC433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=rnayak@codeaurora.org
To:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
From:   Rajendra Nayak <rnayak@codeaurora.org>
Subject: is 'dynamic-power-coefficient' expected to be based on 'real' power
 measurements?
Message-ID: <248bb01e-1746-c84c-78c4-3cf7d2541a70@codeaurora.org>
Date:   Tue, 15 Sep 2020 11:14:00 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

There has been some discussions on another thread [1] around the DPC (dynamic-power-coefficient) values
for CPU's being relative vs absolute (based on real power) and should they be used to derive 'real' power
at various OPPs in order to calculate things like 'sustainable-power' for thermal zones.
I believe relative values work perfectly fine for scheduling decisions, but with others using this for
calculating power values in mW, is there a need to document the property as something that *has* to be
based on real power measurements?

Looking at the bindings,

   dynamic-power-coefficient:
     $ref: '/schemas/types.yaml#/definitions/uint32'
     description:
       A u32 value that represents the running time dynamic
       power coefficient in units of uW/MHz/V^2. The
       coefficient can either be calculated from power
       measurements or derived by analysis.

       The dynamic power consumption of the CPU  is
       proportional to the square of the Voltage (V) and
       the clock frequency (f). The coefficient is used to
       calculate the dynamic power as below -

       Pdyn = dynamic-power-coefficient * V^2 * f

       where voltage is in V, frequency is in MHz.

.. the 'can either be calculated from power measurements or derived by analysis'
tells me we don't mandate that this be based on real power measurements.
If we do, then perhaps that needs to be mentioned explicitly?

thanks,
Rajendra

[1] https://lore.kernel.org/patchwork/patch/1287119/#1494073

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation
