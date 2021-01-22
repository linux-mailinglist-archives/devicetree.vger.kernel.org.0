Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E81B3006B7
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 16:10:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728807AbhAVPIq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 10:08:46 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:34563 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728580AbhAVPG7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 10:06:59 -0500
Received: by mail-oi1-f179.google.com with SMTP id h192so6300010oib.1
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 07:06:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=a+tNIRPFsQZNo0iJpQuhv55n/0RmSsDH8TXaDaa4xLk=;
        b=Zz7dvRnHGqhVhG4+UovuC2bbvnyE3B+TWjiDssn7q5WDIxEpRPJVlFw0NL6o5h4hkj
         Sm/97TqTOZWpnfR/bZ9fPvD5AWM7org3UEvrplBLO9NGwl+exq97Z+Hk49j91tZ5qEz1
         1R36jBdUd9MlgR0exGpRz53aVFk2R3kqxepg9yS5NjiebemUf9MDPcdByWxWozxjrfk/
         EUujW6yEcvDL7WLY/bwNHMnsuC7+flZ4HG5MH7n2GmhTgvNxfgl6x8nBkXnMAMkBDSe7
         X1zibUKfrWuFvgjtzaGXUbOgqYZOT0GpfDPqJotRS3oEpLc1A0OnnkP7XkVRpxVtikFZ
         0lXQ==
X-Gm-Message-State: AOAM531ZeUbqsb3SDncfpyqkjmbu4kcFDnC0s7s/KUyUlQfu9nDnKnXM
        kceH+1kzwmIztKYwb0nW0AYt+wIwfQ==
X-Google-Smtp-Source: ABdhPJzr/xDORwzWodRvwYpOAr5mW3eIufe+a+D0WslquHp50TAZWeIpBw3IeBAgAhoX/1hhqBjiyA==
X-Received: by 2002:aca:cc03:: with SMTP id c3mr3354569oig.137.1611327978719;
        Fri, 22 Jan 2021 07:06:18 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i126sm1717121oif.22.2021.01.22.07.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jan 2021 07:06:17 -0800 (PST)
Received: (nullmailer pid 788624 invoked by uid 1000);
        Fri, 22 Jan 2021 15:06:15 -0000
Date:   Fri, 22 Jan 2021 09:06:15 -0600
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v3 0/3] dt-bindings: display: Convert mxsfb DT bindings
 to YAML
Message-ID: <20210122150615.GA750442@robh.at.kernel.org>
References: <20210115222304.5427-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210115222304.5427-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 16, 2021 at 12:23:01AM +0200, Laurent Pinchart wrote:
> Hello,
> 
> This patch series has previously been posted as part of "[PATCH v2 0/7]
> drm: mxsfb: Allow overriding bus width". I've split the DT bindings
> conversion to a separate series as I believe they're ready, and Martin
> has a patch that he would like to submit to the bindings.
> 
> All the patches have been acked, and changes to v2 are minor. Rob, could
> you take this through your tree ?

Better to go thru drm-misc-next given other changes coming, so I applied 
the series there.

Rob
