Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF86A463439
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 13:29:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233345AbhK3Mcg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 07:32:36 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:60278 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbhK3Mcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 07:32:32 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E7605B8199F
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 12:29:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01A15C53FC1;
        Tue, 30 Nov 2021 12:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638275351;
        bh=BFMwDVKgdRxeL/hUL0Yxg/QDQP6Fqmz6xMzG1kdcG4w=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=odDzXEMyeM6eqZ11I0s/nsTG1oVmXrMZUOkI4fT9oe4PBMqrzDLexHW8GFOQg3afq
         pb2gLOJSPnKz5rhReZ4LvkvWQBCxHuThdPdczWXvfwLeNPNAQvHi8kTfmuZFtxW5lz
         ffmNvCMU7fEMGePLSzh8ITn+y8GksvG1SwQsfS2H6XBLF0iM10h4Wt4onrZ9afQ7kL
         k57GeHnIWcYX3YOgYM6wY9uSAP1hP38oKLCalNi+Bd8X/9XVLWARl0pxggMy2hR3zP
         kpZkle7awTrnrp5kFj2/glgwQXugH6dHYG2OIFuiHFwjTGMkd0frhxfd6cNclq8rxz
         DAW9YXb4tJ9cQ==
Message-ID: <a13329e0431fc041ecb5130e1287ec85162d375c.camel@kernel.org>
Subject: Re: [PATCH V2 0/2] dt-bindings: soc: bcm: Convert
 brcm,bcm2835-vchiq to json-schemas
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Mwesigwa Guma <mguma@redhat.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-staging@lists.linux.dev
Date:   Tue, 30 Nov 2021 13:29:05 +0100
In-Reply-To: <1635682086-3200-1-git-send-email-stefan.wahren@i2se.com>
References: <1635682086-3200-1-git-send-email-stefan.wahren@i2se.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2021-10-31 at 13:08 +0100, Stefan Wahren wrote:
> This series converts the VCHIQ bindings to YAML format.


Applied for-next,

Thanks!
