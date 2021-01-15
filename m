Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47A842F73F0
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 09:01:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731999AbhAOIA6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 03:00:58 -0500
Received: from comms.puri.sm ([159.203.221.185]:59764 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728688AbhAOIA6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 Jan 2021 03:00:58 -0500
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id 936E4DF477;
        Thu, 14 Jan 2021 23:59:47 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id rFSU89Uq-WvI; Thu, 14 Jan 2021 23:59:46 -0800 (PST)
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     laurent.pinchart@ideasonboard.com
Cc:     agx@sigxcpu.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, marex@denx.de,
        robh@kernel.org, stefan@agner.ch,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v2 1/7] dt-bindings: display: mxsfb: Convert binding to YAML
Date:   Fri, 15 Jan 2021 08:59:18 +0100
Message-Id: <20210115075918.26407-1-martin.kepplinger@puri.sm>
In-Reply-To: <20201007012438.27970-2-laurent.pinchart@ideasonboard.com>
References: <20201007012438.27970-2-laurent.pinchart@ideasonboard.com>
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

hi Laurent,

Do you mind me adding a DT property in the old format now? If so, I'd
appreciated an ack in this thread:
https://lore.kernel.org/linux-arm-kernel/20201201134638.GA305734@bogon.m.sigxcpu.org/

If it causes extra work for you and want to resend your series soon, I'll
gladly delay them for later.

thanks,
                                       martin
