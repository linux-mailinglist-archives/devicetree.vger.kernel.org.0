Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A83E228CED
	for <lists+devicetree@lfdr.de>; Wed, 22 Jul 2020 01:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731455AbgGUX6q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 19:58:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731361AbgGUX6q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 19:58:46 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 394BCC0619DB
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 16:58:46 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id 8so216555pjj.1
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 16:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=GuyDVxBXJ2eH/fhFLNQsFiugfMp6zgAf3tWvMyaED+s=;
        b=HaAgyktYnJOdjm5FRHn5a2ME+0Fd9HVyv0m5tug3+N2yvslrpy2kUqaZrnPLE5PP5J
         +W1u5brVAx92kBbDzk+6zrBBUcNNPgkh7Yuhwl07N9CJU25tAyyf427zq3s7OMTudGMH
         9xd4r4hn/FAIex3VFg1YQUnS+tpDa1SDcwP/OMueE0jBmmByQTwFY6ovbcf5bg9gidev
         6tycNK/hXF7XZ6Ddhqc/Rwdh7puaq/3P2q6jMZKBN4udkoMsKVizjO6WN9H7+6SAv1Hh
         Xjtolx88vxG70K2suFvarVbFLW2TVF2dHuDRl2yX2whEBF6VUdpLrQ3QucfhyNdamySF
         qf5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GuyDVxBXJ2eH/fhFLNQsFiugfMp6zgAf3tWvMyaED+s=;
        b=ubzX5vLPYqMKU7kTGqJz5LozZd9BX5ZznN5X/yhvqVTiPug6FZJwhTN4zDm3Re23np
         W+Oz5+dTAIA0TkvTmSXLxpMuUzzfCijFsVgd6PnTGyi6OmnIoNzSLeQS2KV1JJEsjyne
         FX2RN39UcvzbmxsPjz3b323qdSp+hjfcKwME09MZFs3hM9tNtnd++IqbVZpuHt4IajD1
         FmuhWFyoGZLCc2i045Lg4f0IJqKPdH0hDSsuM7bCNF41bwTgka5VLbs9qcjvTp8h+SBg
         7vaHTIYSsVIHT18Ue9hB9JZII+bCjJvlhZFdIHgjG/aqAq36ZLeR93+GIJO5iDdk97cm
         vKyA==
X-Gm-Message-State: AOAM530f/XbDeDp/UzDZC2l1vVR7mk5vh386PTi6/bT+m/vpjsC32T4Q
        /7hsKTnSahy93Ii3vdgjSvfrzA==
X-Google-Smtp-Source: ABdhPJyNuk7PzxMd8B56wIzfsRBCUaRfXZEp3SIsJsCTjayO+IwYE5wac4ySM2zGZNDAQTp1F3brfA==
X-Received: by 2002:a17:902:8ecb:: with SMTP id x11mr18820708plo.123.1595375925125;
        Tue, 21 Jul 2020 16:58:45 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id a2sm21698033pfg.120.2020.07.21.16.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 16:58:44 -0700 (PDT)
Date:   Tue, 21 Jul 2020 16:56:50 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konradybcio@gmail.com>
Cc:     Will Deacon <will@kernel.org>, skrzynka@konradybcio.pl,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH 1/1] iommu/arm-smmu: Implement qcom,skip-init
Message-ID: <20200721235650.GN388985@builder.lan>
References: <20200704122809.73794-1-konradybcio@gmail.com>
 <20200704130922.GB21333@willie-the-truck>
 <20200705033511.GR388985@builder.lan>
 <CAMS8qEWO-1mNd12Zs-2WogCrgNF5=6RkF=Z1pTeOZxSuKjx+qg@mail.gmail.com>
 <20200721154415.GA5758@jcrouse1-lnx.qualcomm.com>
 <CAMS8qEXNh6n9SpMkPAr8cPneasPvJPELD2TZ4gxUf0byxNePbg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMS8qEXNh6n9SpMkPAr8cPneasPvJPELD2TZ4gxUf0byxNePbg@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 21 Jul 09:20 PDT 2020, Konrad Dybcio wrote:

> >The current
> >focus has been on moving more of the SMMU specific bits into the arm-smmu-qcom
> >implementation [1] and I think that is the right way to go.
> 
> Pardon if I overlooked something obvious, but I can't seem to find a
> clean way for implementing qcom,skip-init in arm-smmu-qcom, as neither
> the arm_smmu_test_smr_masks nor the probe function seem to be
> alterable with arm_smmu_impl. I'm open to your ideas guys.
> 

Is the problem on SDM630 that when you write to SMR/S2CR the device
reboots? Or that when you start writing out the context bank
configuration that trips the display and the device reboots?

Regards,
Bjorn
