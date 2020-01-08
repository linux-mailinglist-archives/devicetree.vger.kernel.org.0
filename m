Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4F94134E1F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 21:54:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726990AbgAHUyy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 15:54:54 -0500
Received: from asavdk4.altibox.net ([109.247.116.15]:36838 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726667AbgAHUyx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 15:54:53 -0500
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 0C383804AF;
        Wed,  8 Jan 2020 21:54:49 +0100 (CET)
Date:   Wed, 8 Jan 2020 21:54:48 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        ML dri-devel <dri-devel@lists.freedesktop.org>,
        Yannick Fertre <yannick.fertre@st.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: one binding file for all simple
 panels
Message-ID: <20200108205448.GA4476@ravnborg.org>
References: <20200102101712.5085-1-sam@ravnborg.org>
 <20200102101712.5085-2-sam@ravnborg.org>
 <CA+M3ks7_5To5r+PgUdg_4RrUpxHwVNuzTWGmn-cNXcfrgTq5Vg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+M3ks7_5To5r+PgUdg_4RrUpxHwVNuzTWGmn-cNXcfrgTq5Vg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
        a=IEmTqaxMNtxA4Ll5eFEA:9 a=CjuIK1q_8ugA:10
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Benjamin.

> > +
> > +required:
> > +  - compatible
> > +  - power-supply
> 
> Hi Sam,
> 
> power-supply property should be optional like it was in
> ampire,am-480272h3tmqw-t01h.yaml
> else it looks good for me.

power-supply was discussed in PATRCH 2/2 and the conclusion was that
power-supply is required.
Thus I take this as an Acked-by:

And I have committed to drm-misc-next

	Sam
