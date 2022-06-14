Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55EA654BBDE
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 22:36:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239258AbiFNUgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 16:36:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234269AbiFNUgF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 16:36:05 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E447D25EAD
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 13:36:04 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id w16so13076760oie.5
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 13:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Hx4m2cPli7Yxo9eAFRYxPiAMxd1txrBCTKUV9CpN2r0=;
        b=GBkzGhubW+m1NdLCNrCltl11TXe5LOM0BQ/SfuKRQoe7iCB6ZeYKTyUe8EfDcNgcPt
         MVsktVdkmvdEUBuXPzFN20lpnSoyXhqi0brF2GSV1d8yS02hFbk//x4c/x6wOxpUKxBr
         1DK78eRRMiDbYAfitFipkmlpQTGpSTh86IolI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Hx4m2cPli7Yxo9eAFRYxPiAMxd1txrBCTKUV9CpN2r0=;
        b=60/eTZFRjaNfA9dp7W+N8bsIgGvjtPPHexPyQzfra6KuMxHCDYjMdSy75z/KJwUPWK
         LibDZDMTKPgSBGfFGscth5spI65AU9BsC9ufCQr78R1z+RhEuwPx2gXJOJqKAzvzS2Qe
         7dI8TnILV8MMRwmOP2CB8+U5JXCtLFpNLmzpy1q7SkM2PxT9rMok02dSahilY+3WVFCB
         am/ENMIdIYowCiaRKJEUer5gHdLUoyxZ5uPog8xBjJUxRytRwqZQkiaH++kUhBxJqf2K
         PejjSYdhCZMcF8TszNm9+7Fyd7ZmS6afLDTYrZ7wqJtREv2oN9VkMTzbMDxpydN3x+Bj
         VV2g==
X-Gm-Message-State: AOAM533oTN+lS6Al03/2x8FitzwtZiVq6Wp6hLUSrUtlEqaL4wCL4hfF
        mLUmPA/ndVNdhBr0X4buIPqq4nr7Xp53YmsUwneJhQ==
X-Google-Smtp-Source: ABdhPJyUxXUDBEQ+OOoBRc+71eAnqcx8CzEK1l5uYJcSQkppiAlnoMLs2N5eXAGmpqdYgivUkN3FA0x6g0zkUB1oerA=
X-Received: by 2002:a05:6808:e87:b0:32e:4789:d2c with SMTP id
 k7-20020a0568080e8700b0032e47890d2cmr2999011oil.193.1655238964235; Tue, 14
 Jun 2022 13:36:04 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 14 Jun 2022 13:36:03 -0700
MIME-Version: 1.0
In-Reply-To: <1655200111-18357-8-git-send-email-quic_c_skakit@quicinc.com>
References: <1655200111-18357-1-git-send-email-quic_c_skakit@quicinc.com> <1655200111-18357-8-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 14 Jun 2022 13:36:03 -0700
Message-ID: <CAE-0n53JOXHrVOMaBBhYFfMymee5qOpCBvM6=s+9YTNt51B9TA@mail.gmail.com>
Subject: Re: [PATCH V15 7/9] regulator: Add a regulator driver for the PM8008 PMIC
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_collinsd@quicinc.com, quic_subbaram@quicinc.com,
        quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-06-14 02:48:29)
> Qualcomm Technologies, Inc. PM8008 is an I2C controlled PMIC
> containing 7 LDO regulators.  Add a PM8008 regulator driver to
> support PMIC regulator management via the regulator framework.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
