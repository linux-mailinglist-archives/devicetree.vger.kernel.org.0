Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 493D541D074
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 02:08:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235869AbhI3AKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 20:10:25 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:27371 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233873AbhI3AKZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Sep 2021 20:10:25 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1632960523; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=kOhjkHIxuUBiyMj/xZU0inF7H1QQJc5rXV7rQHRmlHc=;
 b=JFmru+6LXzA6p7dtLD2YvDNoPTAEw5FN4Yb3GQQIE/H1LFjmuqMx68Jpya1KjJBElpnDfE2h
 J3dlUGZIOyDvb8+XRZwIYlYRA1CPw3wyRVxt6FnLgyeblvvnqZEH6k6CmL5ftxJWsKScvvez
 zJnbO+8ytihkZokNc286puljHZo=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 6155000b713d5d6f9622ac70 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 30 Sep 2021 00:08:43
 GMT
Sender: mturney=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id ACDC2C4360D; Thu, 30 Sep 2021 00:08:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: mturney)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id BB820C4338F;
        Thu, 30 Sep 2021 00:08:41 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 29 Sep 2021 17:08:41 -0700
From:   mturney@codeaurora.org
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: Re: viability of dt-schema long-term
In-Reply-To: <CAL_JsqLuZkL6XztT_Wid3R_ohU01zQwU5HywqpN7hAS4fUNa=g@mail.gmail.com>
References: <b4c0976e36a3a6e45b1042d4587e2eb9@codeaurora.org>
 <CAL_JsqLuZkL6XztT_Wid3R_ohU01zQwU5HywqpN7hAS4fUNa=g@mail.gmail.com>
Message-ID: <bf523abba466af778c2e549806414578@codeaurora.org>
X-Sender: mturney@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[sending to you directly because I am no longer on kernel list and you 
respond to the dtschema queries anyway, if you prefer I will re-join 
kernel list and re-send to whole list]

Reviving this thread now that we have some experience with dt-schema.

Our experience with both dtc and the dt-schema scripts is there doesn't 
seem to be any real distinction between errors and warnings.
Below are some examples.

This is from dt-validate: : pinctrl@f100000: 'width' is a required 
property
This is from dtc: : Warning (reg_format): /soc/pinctrl@f100000:reg: 
property has invalid length (8 bytes) (#address-cells == 2, #size-cells 
== 1)

In both cases neither tool returned an error code to the shell (echo $? 
= 0)
dtc will error with a syntax problem, but that seems to be it.

Is this how the kernel community prefers these tools to work?

Our concern is more with the dtschema scripts so we can use this to 
break the build and force the engineer to fix either the .yaml or .dtsi 
file.

Before we dive into the dtschema scripts we wanted to understand the 
philosophy behind the design decisions.


On 2020-11-30 11:02, Rob Herring wrote:
> On Wed, Nov 25, 2020 at 2:13 PM <mturney@codeaurora.org> wrote:
>> 
>> 
>> Folks,
>> I am advocating use of dt-schema project internally to validate DTS
>> files.
>> I should add that our use is outside kernel tree on proprietary 
>> project.
>> 
>> One of the push-backs I'm getting from the management chain is along 
>> the
>> lines of...
>> 
>> Who is this Rob Herring guy and why should we use a project that is 
>> only
>> sourced on https://github.com/robherring/dt-schema?
> 
> I wouldn't trust him...
> 
> That's the wrong repo though: 
> https://github.com/devicetree-org/dt-schema
> 
> (Unfortunately, GH's forks is misleading as the 'root' repo has 
> changed.)
> 
>> If the kernel project is using it, why isn't kernel.org hosting the
>> project?
> 
> It's not a kernel project. That's why devicetree.org hosts it.
> 
>> What is kernel plan if Rob walks away from the project, is this going 
>> to
>> wither away and die?
> 
> IMO, only if folks don't find validation valuable or a better
> implementation comes along.
> 
>> There are more, but the above pseudo-quotes grab the gist of the
>> management complaints.
>> 
>> Q.1) Is there a plan for the kernel project to suck dt-schema into its
>> orbit?
> 
> No, the 'plan' (more like desire) is more in the opposite direction.
> Move more of DT (bindings and dts files) out of the kernel for other
> projects to use. For now, we have the 'devicetree-rebasing' tree which
> is just the DT bits from the kernel tree.
> 
>> Q.2) How many active maintainers are there for dt-schema?
> 
> Mostly just me. Maxime Ripard is also one. Others could be if the need 
> arose.
> 
>> Q.3) How do I respond to the above types of complaints?
> 
> jsonschema python module which is our main dependency is also just a
> single maintainer. So is dtc. Maybe not what you want to highlight.
> 
> Rob
