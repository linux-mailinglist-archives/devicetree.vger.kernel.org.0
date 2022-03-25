Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC77D4E7C76
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:21:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbiCYX7J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 19:59:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbiCYX7J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 19:59:09 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79C4E33EBE
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 16:57:34 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id i23-20020a9d6117000000b005cb58c354e6so6615160otj.10
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 16:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=y3WWMoX85h3QR2VN69rZfkaedQmbRJB8ojC0EO8mBpc=;
        b=OZH5okYRUida/dbqFK+eNnyIaUYXA4JdjJyOpWuANB9lKSGJW+mwmf9tG7lFuMiZ6f
         dmJHcLtR6k9InhUa0ELbBj5fivFv7xCsJU6QNjYJawI2+vOdInuwrdiW3ET7hd09cwj/
         ouX4UKQ+fAcImlWs9voHa+hWZ3n9SwU/+GM3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=y3WWMoX85h3QR2VN69rZfkaedQmbRJB8ojC0EO8mBpc=;
        b=EPyorARyZyVI27YltzqxCi5ktsUVQS4d8qHjcbsL7vCUEVnGwCJtqgBXkP4vYCYeVJ
         tNrjdP6G1S/YnR4qhBntDX3mHg6autn0lIPYDgqxid8ATA7ByOkmmaMs9VUUq0git4yA
         s/uGu6sp04XIS2UQMt1chkz4EYiZpC1qIOy/VipZDG8mVcKGrouFSDsIUEugFDfCg0fp
         DqL68nlCPBg91KMnWQu2g8RuSiRJXRJOC8COZgxu7Cw1mdkjql36wT3pzdRCsoCatqb5
         /M40SYi4WqxKiIb3iXhn8BQC+mplbMHblU6MhT7DV5ubPXpjL5hJXnSn6UrkeEnQuR45
         Ctwg==
X-Gm-Message-State: AOAM5305gNFWjfz34nmvfQJvcQ1G9D6WDRzAxMIa5zi1/gfi7WFW0s5T
        1lTR6HvEAuMUvwTSrFlJqMoQw5RTKzrjDeTbZFXzWYR/ugU=
X-Google-Smtp-Source: ABdhPJwodBDZWoPGXNj0YDgQwL4Lq0+AUwNvLMxJp5HhkV+gJwnCTR1g2bxGTyEtJZhuIRnE1H5r10eqJn52rvRDcTQ=
X-Received: by 2002:a9d:b85:0:b0:5cb:3eeb:d188 with SMTP id
 5-20020a9d0b85000000b005cb3eebd188mr5611012oth.77.1648252653902; Fri, 25 Mar
 2022 16:57:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 18:57:33 -0500
MIME-Version: 1.0
In-Reply-To: <20220325220827.3719273-3-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org> <20220325220827.3719273-3-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 18:57:33 -0500
Message-ID: <CAE-0n53N5k89u-1bym2varmM=ZsA5L0VGTbbRxDrR=OzxUDYLA@mail.gmail.com>
Subject: Re: [PATCH v3 2/8] iio: sx9324: Fix register field spelling
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-25 15:08:21)
> Field for PROX_CTRL4 should contain PROX_CTRL4.
>
> Fixes: 4c18a890dff8d ("iio:proximity:sx9324: Add SX9324 support")
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
