Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F55C3FB650
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 14:46:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236666AbhH3MqW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 08:46:22 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:55784 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236645AbhH3MqW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Aug 2021 08:46:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1630327528;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=TAcAP/xH/JBVD6nQSnDkpommozbj10qHdY7UHUiU8Q4=;
        b=Afd/lYWtZ3w0scwAV4ik2N22v4AZukt0cyArEOmaCZu4xuhpWhz1BLhxMFRCKI/1bznrWA
        oqgGT+0Y4LFaUYiFZHVa5ABopOYeIX62eq6hb/6IXtDlVrzHhdhKF9gKE9RP4nprJq3Cka
        FYRyqHDB3+OdH5rVkQFHwlT9AygCTAY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-373-3cGi4QitNXenl_KgDu6_HA-1; Mon, 30 Aug 2021 08:45:26 -0400
X-MC-Unique: 3cGi4QitNXenl_KgDu6_HA-1
Received: by mail-wm1-f72.google.com with SMTP id 5-20020a1c00050000b02902e67111d9f0so4662775wma.4
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 05:45:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=TAcAP/xH/JBVD6nQSnDkpommozbj10qHdY7UHUiU8Q4=;
        b=QdFqjyZThFrz9BcsTvQESnBWw336h6uiXVAcOX4SBR6Ga6bYHQ2TDhB00H1VjhAcGC
         5fa5IZGcMje7yrUt7oRw/5Mj8KCWgHbdJT6M+hrAudLcCfx/nxHVnUmRmBP5fKNuQDaD
         0/lJmmNVw4SoErgkQyg/0lJg87FEbXC0HaAiz+XvlPZlzlF5mjUOGXIkF0XOccoOl6sC
         tZCxFNr6eN9IqCnLBF2C25zIx7mF1CmWDdS7eBg4457sNVsHGD+pL6/Plgr96/Dpzp7b
         D4FSq9ZfZS/hNQQzB0dZqxcq9zzijrBwi4P1WT5XR3tRq8MKKmC9ezu0QjoRMxLbRuMB
         eXCw==
X-Gm-Message-State: AOAM533gclq9pO4VeD31JFizhCgLoAwpq0qyO8mehj8Cw/mgmvgDnkY4
        it7rEENqWXEAZ1aGVX143O3gV/41fnZmUmuceZRMyonMH4AOBzMyvrQGsyluVUP4XSEd9UkhKIC
        zkjc0bCLZ+vvMQVchvh/dng==
X-Received: by 2002:adf:8169:: with SMTP id 96mr25984451wrm.207.1630327525627;
        Mon, 30 Aug 2021 05:45:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHQFdtgqFJB12YSVQLA45kLlBZRJ0vA+TcNMyVfjbG7srYAviQMmfRkzLyeuyHfbf6Wy9baA==
X-Received: by 2002:adf:8169:: with SMTP id 96mr25984430wrm.207.1630327525444;
        Mon, 30 Aug 2021 05:45:25 -0700 (PDT)
Received: from ?IPv6:2a0c:5a80:3c08:b500:afb2:5ebc:3fd2:26de? ([2a0c:5a80:3c08:b500:afb2:5ebc:3fd2:26de])
        by smtp.gmail.com with ESMTPSA id h6sm14368959wmq.5.2021.08.30.05.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 05:45:25 -0700 (PDT)
Message-ID: <5124460b547a5f77a19e292bfb785aabde764189.camel@redhat.com>
Subject: Re: [RFC PATCH v2 4/4] sensehat: Add device tree overlay (do not
 merge)
From:   nsaenzju@redhat.com
To:     Charles Mirabile <cmirabil@redhat.com>,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Serge Schneider <serge@raspberrypi.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org, fedora-rpi@googlegroups.com,
        Mwesigwa Guma <mguma@redhat.com>,
        Joel Savitz <jsavitz@redhat.com>
Date:   Mon, 30 Aug 2021 14:45:24 +0200
In-Reply-To: <20210820180801.561119-5-cmirabil@redhat.com>
References: <20210820180801.561119-1-cmirabil@redhat.com>
         <20210820180801.561119-5-cmirabil@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Charles,

On Fri, 2021-08-20 at 14:08 -0400, Charles Mirabile wrote:
> This patch is an RFC. The overlay included here is suitable for the
> Sense HAT but we are not sure where overlays like this should go, or if we
> should even include it, because the Raspberry Pi kernel tree already
> includes that device tree blob that this was based on and most
> distributions for the Raspberry Pi include those blobs.
> 
> The overlay is just in the root of the source tree since we did not know
> where to put it so this patch should not be merged in this state.
> 
> Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
> Signed-off-by: Mwesigwa Guma <mguma@redhat.com>
> Signed-off-by: Joel Savitz <jsavitz@redhat.com>
> ---

Once we get this merged, and since upstream doesn't yet mantain overlays, I
suggest you merge this overlay in the downstream rpi kernel repo, who actively
maintain them. AFAIK a number of distros use that repo as the base for their
devicetrees.

That said, I think providing a devicetree binding for this driver is a must for
it to be merged (in yaml form).

Regards,
Nicolas

