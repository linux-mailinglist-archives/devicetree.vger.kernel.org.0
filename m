Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E33AB46BD1A
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 14:59:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232852AbhLGOC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 09:02:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237447AbhLGOCp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 09:02:45 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24908C061A83
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 05:59:13 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id 137so13946910pgg.3
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 05:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9ESUKLBiwLglZ7fAAALXoWV7PZXHvOzhIGDPe6OkebM=;
        b=pnPRLtMTnOq4Uwn8E7r9ZkhDKaI/K0nHH2eo4O61f9z4Gf8UtFzuGHXAShM3qwxd+K
         hXhKUkmb86V9PD5om1THMHzggWzlW46siyiJlIfghm7PnhfeR3G7K/0orRrl46aMQ2rT
         8ErVQAgnvUs6jjRaygo6pGPS+OTAYxsIToGFVLJyGROtIbLQTWAtKaMEMaD+kygm9kZu
         A76K+tIR1a7imbpvYUCM9oTpee2LevEVELMeoFTtdWh4hlgnc+JizU9CVbBbqcIMmW4R
         sMrERlO+uA0FqeLeKtznjev6GKtSLeOAQ4ZKMCw/Eq+XN5uJI9IB1DRWjW2a6gLfniEo
         AmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9ESUKLBiwLglZ7fAAALXoWV7PZXHvOzhIGDPe6OkebM=;
        b=ciIfVat4fh1PqMyGYiauDpC2HdzjxMvpIIyooW9AhZP2jFieTVgOpI+Y9xTOYz4d4W
         p8Z7dBuPjY4R650X7xG7NMwsUY9lUw1g4B0fsCwLHku9w3theeJNSzHvTAnLiSE2nkaA
         bQ4FVUD2XbCB/fO6r8VZo9qin6vtcud70KBh7zckzXoe/1YdDQP7aJLaBG2tVVpn3TFy
         /7WxUcYX+0KEmFmotAEYV7M56RxvUU+NBiXIMI0FUMRNpMgGwkmx4zNylqnEI4Ctkqa9
         4ozCDJnrq2ZmGEh5JNRCPYtogl3vOxamHo2RYOz7pz7ct2CyMehC9ig3vXNbcslGYWme
         Cvwg==
X-Gm-Message-State: AOAM533JeZfOlnRx1KQ0eFgnELaEgtyMxVrKHXCExEtNwp5PJqHDVL2n
        z8CEFvSULu0stvyCXzSOBW4kJQ==
X-Google-Smtp-Source: ABdhPJz2NyQwlIvJG831Y8wH/2/s8eMw0eLvlWUNc1iKHcnNjz05ZlVRgrBC+IQojO6FNU7cn80pEA==
X-Received: by 2002:a63:c003:: with SMTP id h3mr24405268pgg.261.1638885552582;
        Tue, 07 Dec 2021 05:59:12 -0800 (PST)
Received: from leoy-ThinkPad-X240s ([103.207.71.6])
        by smtp.gmail.com with ESMTPSA id b18sm16905053pfl.121.2021.12.07.05.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 05:59:11 -0800 (PST)
Date:   Tue, 7 Dec 2021 21:59:04 +0800
From:   Leo Yan <leo.yan@linaro.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     John Garry <john.garry@huawei.com>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        mark.rutland@arm.com, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, uchida.jun@socionext.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
Subject: Re: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID
 registers
Message-ID: <20211207135904.GH42658@leoy-ThinkPad-X240s>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
 <20211117144844.241072-4-jean-philippe@linaro.org>
 <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
 <766ac58a-ffb7-f673-709b-0f0f740f3cfd@arm.com>
 <53f868a8-c7ae-b69d-b061-bb0a7dc98f8a@huawei.com>
 <d60110c4-c179-45d6-512d-3d058caac974@arm.com>
 <20211207132007.GB255238@leoy-ThinkPad-X240s>
 <675bfd78-69ac-608f-1303-e86b90a83f72@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <675bfd78-69ac-608f-1303-e86b90a83f72@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 01:46:49PM +0000, Robin Murphy wrote:

[...]

> >    [   28.854767] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.15.auto: iidr=0x0
> > 
> > Please confirm if this is expected or not?  I think this might
> > introduce difficulty for John for the PMU event alias patches, which
> > is dependent on a non-zero IIDR.
> 
> Yes, from previous discussions I believe the HiSilicon implementations don't
> have much meaningful ID information at all (hence why we have to match ACPI
> table headers to identify the counter erratum). My trick only works for Arm
> Ltd. implementations since they happen to have the IMP-DEF CoreSight
> registers with the same information as would be in the future IIDR.
> 
> To clarify, the proposal at this point is to write up JSON files for
> MMU-600/MMU-700, based on this patch, in order to pipe-clean the process for
> future SMMUv3.3 PMCG implementations with real IIDRs.
> 
> Whether other implementers might retroactively define "equivalent" IIDR
> values for their existing implementations in a way we could potentially
> quirk in the driver is an orthogonal question.

Agreed, it makes sense that supports the standard IP modules in
the mainline kernel at this stage.

Thanks for explanation.

Leo
