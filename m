Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92B0B5BAD8D
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 14:42:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbiIPMmD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 08:42:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbiIPMmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 08:42:02 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD77A6AFD
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 05:42:01 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id v15so11280427iln.6
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 05:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=YlAL0BvKCH8NN/GcGwayEcshzaeRWejxCFhjRsByIp8=;
        b=XxjLFtm/UYQN6xTIhTDLAN69/gzCtD1gVd3BKEzWWbnNPC2RuCl6pcRT3YM406pZyA
         9mlY3HMcYmkwNdvy868r9J+FGH7f7kbRRndHqll/f0l+lhY+W8HWzV9Qrv5SCP8Av+ZT
         lij9pcJ3iT7LYyyVJIEFB7Yj2DqIQ9bBcFnn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=YlAL0BvKCH8NN/GcGwayEcshzaeRWejxCFhjRsByIp8=;
        b=pDw+T5DdgYtcs2ZfeEIludjbzrwvfgcqMtVSqIGJ8RaxV9AG3bIJ4otlLrS+M2q+i6
         YSplXzINOfkOF5PU7KZi5eByaNcFu9Ydo/tvXbsv+NYknZzaz6iUK8xn7HUGzt9lPiJB
         fNBfEn4TqZeBbn6vIgfTItKv5Uw51HmAKsI9eD+ARexnqP102b1W1Wnqngm+Ezv383jw
         8s5EyV8A2Hn5hHJTktL1eq8u+foIVblYod03cbWwMU9y281b/rMFs9FfFB0WpWNoXdPz
         T5f1Swc5fuZQq666u5OprdIeKKPe2o1bcLKsj66u+GoiTNdN4+iMmLE4LUMJparr9eHg
         u8mA==
X-Gm-Message-State: ACrzQf3PCbHnyBm/M9eNwdbAB+/UWgBYqqactBftQhqaxiDRtyIkU44Y
        eTgjJHLxsrrVu3gzWjveJ5si0A==
X-Google-Smtp-Source: AMsMyM5cAdcV+bPCyOY8Hu8lTDYaVfhr3D7UJ1X2dE9RPjICawOjxJYMU7AXuR2UKFxfi1By3X7oHg==
X-Received: by 2002:a05:6e02:c84:b0:2f1:3e7d:8bf2 with SMTP id b4-20020a056e020c8400b002f13e7d8bf2mr2294547ile.272.1663332121227;
        Fri, 16 Sep 2022 05:42:01 -0700 (PDT)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id ct9-20020a056638488900b003583b307d55sm2228412jab.49.2022.09.16.05.42.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Sep 2022 05:42:00 -0700 (PDT)
Date:   Fri, 16 Sep 2022 12:42:00 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <quic_rjendra@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sboyd@kernel.org, johan+linaro@kernel.org,
        quic_kriskura@quicinc.com, dianders@chromium.org
Subject: Re: [Patch v2] arm64: dts: qcom: sc7280: Add required-opps for USB
Message-ID: <YyRvGDm2agpEI5zg@google.com>
References: <20220916103124.30581-1-quic_rjendra@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220916103124.30581-1-quic_rjendra@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 16, 2022 at 04:01:24PM +0530, Rajendra Nayak wrote:
> USB has a requirement to put a performance state vote on 'cx'
> while active. Use 'required-opps' to pass this information from
> device tree, and since all the GDSCs in GCC (including USB) are
> sub-domains of cx, we also add cx as a power-domain for GCC.
> Now when any of the consumers of the GDSCs (in this case USB)
> votes on a perforamance state, genpd framework can identify that
> the GDSC itself does not support a performance state and it
> then propogates the vote to the parent, which in this case is cx.
> 
> This change would also mean that any GDSC in GCC thats left enabled
> during low power state (perhaps because its marked with a
> ALWAYS_ON flag) can prevent the system from entering low power
> since that would prevent cx from transitioning to low power.
> Ideally any consumers that would need to have their devices
> (partially) powered to support wakeups should look at making the
> resp. GDSCs transtion to a Retention (PWRSTS_RET) state instead
> of leaving them ALWAYS_ON.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>

I suppose a similar patch is needed for sc7180?
