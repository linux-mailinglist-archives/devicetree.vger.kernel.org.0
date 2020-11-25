Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AEF52C49B8
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 22:15:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731333AbgKYVNU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 16:13:20 -0500
Received: from z5.mailgun.us ([104.130.96.5]:31109 "EHLO z5.mailgun.us"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731136AbgKYVNU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Nov 2020 16:13:20 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1606338800; h=Message-ID: Subject: Cc: To: From: Date:
 Content-Transfer-Encoding: Content-Type: MIME-Version: Sender;
 bh=xM0yJLsV7TQGz8DklZILvBPJVocrTYV7CjfY0iWs1FU=; b=dfjPfgHPDtgYT6n7qVhHu9ULktoGSZqvJQW98Ua5ZY4MMng2p5v2G55dCZFHPQ3fzGg4oSOH
 DtNgx2SgilZB4G+ZZlj6E1Evj8tUjX400fXtNOoalseXM0ysvMHcuoipvWhy7Ygq+q85H3R9
 g6LxY9r7/m8c9yrjQ8kn/foBa9E=
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 5fbec8e87ef0a8d8437e6167 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 25 Nov 2020 21:13:12
 GMT
Sender: mturney=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 96E5BC43460; Wed, 25 Nov 2020 21:13:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: mturney)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 9570BC433C6;
        Wed, 25 Nov 2020 21:13:11 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 25 Nov 2020 13:13:11 -0800
From:   mturney@codeaurora.org
To:     devicetree@vger.kernel.org
Cc:     robh@kernel.org
Subject: viability of dt-schema long-term
Message-ID: <b4c0976e36a3a6e45b1042d4587e2eb9@codeaurora.org>
X-Sender: mturney@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Folks,
I am advocating use of dt-schema project internally to validate DTS 
files.
I should add that our use is outside kernel tree on proprietary project.

One of the push-backs I'm getting from the management chain is along the 
lines of...

Who is this Rob Herring guy and why should we use a project that is only 
sourced on https://github.com/robherring/dt-schema?
If the kernel project is using it, why isn't kernel.org hosting the 
project?
What is kernel plan if Rob walks away from the project, is this going to 
wither away and die?

There are more, but the above pseudo-quotes grab the gist of the 
management complaints.

Q.1) Is there a plan for the kernel project to suck dt-schema into its 
orbit?

Q.2) How many active maintainers are there for dt-schema?

Q.3) How do I respond to the above types of complaints?

Cheers,
T.mike
