Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2D45714972C
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2020 19:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726338AbgAYS33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jan 2020 13:29:29 -0500
Received: from asavdk4.altibox.net ([109.247.116.15]:47606 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726327AbgAYS33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jan 2020 13:29:29 -0500
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 7B744803EA;
        Sat, 25 Jan 2020 19:29:26 +0100 (CET)
Date:   Sat, 25 Jan 2020 19:29:25 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Cc:     Rob Herring <robh@kernel.org>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: display: add panel-timing.yaml
Message-ID: <20200125182925.GB31645@ravnborg.org>
References: <20200120200641.15047-1-sam@ravnborg.org>
 <20200120200641.15047-2-sam@ravnborg.org>
 <CAGgjyvGh8idpvijVcV0vA8R_iaB0mQMTk_=wWDSSKWX7hwdYPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGgjyvGh8idpvijVcV0vA8R_iaB0mQMTk_=wWDSSKWX7hwdYPw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=m8ToADvmAAAA:8
        a=WClieQXzqLrzxEKpCfgA:9 a=CjuIK1q_8ugA:10 a=Tn1J1fpi7EkA:10
        a=kCrBFHLFDAq2jDEeoMj9:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Oleksandr

Thanks for the feedback on the typos.

> 
> Anyway, those are minor issues, so
> 
> Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

I did a number of other changes so I dropped this r-b,
as you really did not review the v2 version.
v2 coming later today.

	Sam
