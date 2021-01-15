Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6159D2F8867
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 23:28:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbhAOW0N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 17:26:13 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:51910 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbhAOW0N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 17:26:13 -0500
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 75BBA58B;
        Fri, 15 Jan 2021 23:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1610749531;
        bh=1lWu0Wr18eUW/zYHXzAgkSrjIhn0kvFfK0ToUCV26Po=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=wPYFR1F1oeXBM3AfAiWfORdKRonvEhoFCJ2W8mI7zi3niEjds2uDcDS/ZQ7/BnH0w
         G3ExpiXWanTfL/0inmcehRD35caFQB0XnFRdPoDu191joilntgVY/HtJR2x9BQjDh4
         P7kGpCCQrnuxsvokihfMRiIeHbxq9MeHFWmMTgFc=
Date:   Sat, 16 Jan 2021 00:25:14 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Martin Kepplinger <martin.kepplinger@puri.sm>
Cc:     agx@sigxcpu.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, marex@denx.de,
        robh@kernel.org, stefan@agner.ch
Subject: Re: [PATCH v2 1/7] dt-bindings: display: mxsfb: Convert binding to
 YAML
Message-ID: <YAIWSr46dqZpYAat@pendragon.ideasonboard.com>
References: <20201007012438.27970-2-laurent.pinchart@ideasonboard.com>
 <20210115075918.26407-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210115075918.26407-1-martin.kepplinger@puri.sm>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Martin,

On Fri, Jan 15, 2021 at 08:59:18AM +0100, Martin Kepplinger wrote:
> hi Laurent,
> 
> Do you mind me adding a DT property in the old format now? If so, I'd
> appreciated an ack in this thread:
> https://lore.kernel.org/linux-arm-kernel/20201201134638.GA305734@bogon.m.sigxcpu.org/
> 
> If it causes extra work for you and want to resend your series soon, I'll
> gladly delay them for later.

I think the conversion ot YAML is ready. I've split it from the rest of
my series, and posted a v3, asking Rob to merge it. Would you mind
rebasing the addition of the new properties on top ?

-- 
Regards,

Laurent Pinchart
