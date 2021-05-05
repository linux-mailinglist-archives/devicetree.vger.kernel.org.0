Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1863B373E2A
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 17:10:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbhEEPLd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 11:11:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233238AbhEEPLc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 11:11:32 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14C0FC061574
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 08:10:36 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id g65so1655478wmg.2
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 08:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=DVmLzOMSAp4MzyBbE9IavSC4LhAdh9HISmFzp/3ey4M=;
        b=PX1CStE/I9J3q2IioHK6rLAPgNG2uQMGooDPLqVfOPEbs5iV4Dysl8GxmNZ9f7HnEG
         dHUkYska5PMvwywUux3KhNAAXJsKPPe3E8yk/53tMJVYrDYuHwO8CjNOXdvn7r6a5iHN
         awUELTnnM6GVm0sdm3u4KLCz7hLYNRvaOVgwkomXWWNBKuZXzo9YiyhchLAmO+fyWo9V
         kBsPsIiKVQiKlWFKE84faQ1yUgkIE6XFlowfw3i7RkByMrRGCitnNEhZ37Keat+aOcYZ
         xsOKNbf4G4D2SLyPIHJXbXrpNkL/DPS808MqexuN8D5esQvnqUfYsGkrV9MKcCJMNmvE
         v+wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DVmLzOMSAp4MzyBbE9IavSC4LhAdh9HISmFzp/3ey4M=;
        b=VxdjkKp0PnqQXFWZtOT0YwCkMJiFAOvEfyNiB2W9u1VU4XUA2Yfv5eNGOO/4XY9irO
         LhH6XFqB4ncFkZ/IBevYwamkja3DImFStnw0SKQVqLKtlU05AmdY5Rcy0zmSAKAqkd2/
         1hKoA3fJS4VFJx7HTJeS4HIncnFBX2BBRGOG6uGQEWtgvLPmGTJ+fxkeoLerd4KDKzes
         PcLf/N43EcCSEmAN7wLi/oySIm8d/Si1Xu15TZtKWjVY0Byijp95hOqxQpMFNIsGej+4
         6hO+0l6XGNgsuYjcXGMG4RWYbvOoY+/og+PPCjSKcfO34ol4YDRVKlQWSmTYbxtRwEbC
         QFdQ==
X-Gm-Message-State: AOAM531MbjWSRoV3Iz1V6EL/B1rnBwUFyrCilInTprTRFWzabc2dgp67
        /10gOUqASN1DIi1ZtEU+v+0HVw==
X-Google-Smtp-Source: ABdhPJy8nlJ3qXwtvGqfZLn39XjnqS6y85vyrZ8H+l0LX0opXU8h1lq+H+YOBMHVhce9a2ebnvx21w==
X-Received: by 2002:a05:600c:228b:: with SMTP id 11mr10351164wmf.6.1620227434761;
        Wed, 05 May 2021 08:10:34 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id c14sm8482425wrt.77.2021.05.05.08.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 08:10:34 -0700 (PDT)
Date:   Wed, 5 May 2021 16:10:32 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Min Li <min.li.xe@renesas.com>
Cc:     "sameo@linux.intel.com" <sameo@linux.intel.com>,
        "grant.likely@linaro.org" <grant.likely@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH mfd v1] mfd: Add Renesas Synchronization Management Unit
 (SMU) support
Message-ID: <20210505151032.GA5109@dell>
References: <1619466246-11198-1-git-send-email-min.li.xe@renesas.com>
 <TYCPR01MB6608C23DE6681CF77729C04ABA599@TYCPR01MB6608.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <TYCPR01MB6608C23DE6681CF77729C04ABA599@TYCPR01MB6608.jpnprd01.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 05 May 2021, Min Li wrote:

> Hi guys
> 
> Can some one please review this patch? It's been submitted back and
> forth a few months now without a meaningful review. Thanks for your
> attention for this issue.

Please be mindful of the release cycle.

The merge-window is currently open.

A review will be conducted shortly after -rc1 has been released.

Please be patient.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
