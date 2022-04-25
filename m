Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1235150E848
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:31:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240655AbiDYSd1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:33:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244440AbiDYSdX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:33:23 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D95795FBA
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:30:18 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id j17so15593628pfi.9
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=t3LYY8Q8HxxIKLZEESOKUZymron1NhXqWUaGu5afEYc=;
        b=aNf1uijNydIuMyjZFea3e7F0re2gh2aSKEhYf7O1ndBbPtQdEGYbgMJMk5N2cKssct
         8aDsQO0wETcTs9A8oJRSuSd7r+2IsOr2pHOiseV/nHn+nDre+2CTIcwxUQtoysbU8XUq
         Ps0yIjhNmGEH4Lm2LN5jyoQv9fc216E0ybs+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=t3LYY8Q8HxxIKLZEESOKUZymron1NhXqWUaGu5afEYc=;
        b=LZYza6vhlDsxs+4Mn3ph5xxU1z8KnFnFQcuwyZMz2AhviZJUDd1Qd1IIXRPG6ZL5pT
         o8Ogq4zNOS/FKFax4uOlDDRNxQCmKUMm/kv9ko9EyezAr/2mzV1OWdloBMeg0dP3BL0W
         6NjCuGZ81AYPlmQqwDODo3zMDt8Mi6mULRgaoFIYagkPghFG0EitXXKGZ/YuqKj6Xr+m
         ANZeHdNS1omB7lsVnlLm7y7eyZaiTcd2MgTOAoY8PqKJawoPd3OxA3sSX4vcVCHAXGCA
         LuNle+Paq9nv1vQtzD4k5u6szx0ETV/JT5QugGsO0X2ZvbIR2ZhXVDZnbA0CC60qUwXb
         4nMg==
X-Gm-Message-State: AOAM530DJOD6lhVwp7jWEcmWNvn5mjosTtxS9SOLbYZFtW6fWPm53JSg
        KRcb1/WURT1v+4Dzq6PU9hdTBQ==
X-Google-Smtp-Source: ABdhPJzjRo2RoiYMNkFvVZ0e35AlHWr4QbWY47hlMW6F3jVuQWbQ1kx9ILKnDZ5WH6JQ6Cms+aGmig==
X-Received: by 2002:a62:fb0f:0:b0:4f2:6d3f:5ffb with SMTP id x15-20020a62fb0f000000b004f26d3f5ffbmr19969538pfm.55.1650911418413;
        Mon, 25 Apr 2022 11:30:18 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:82d8:e463:7918:6331])
        by smtp.gmail.com with UTF8SMTPSA id z10-20020a62d10a000000b0050d3c3668bcsm5333778pfg.137.2022.04.25.11.30.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 11:30:17 -0700 (PDT)
Date:   Mon, 25 Apr 2022 11:30:15 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        srinivas.kandagatla@linaro.org, dianders@chromium.org,
        swboyd@chromium.org, judyhsiao@chromium.org
Subject: Re: [PATCH v10 00/12] Add soundcard support for sc7280 based
 platforms.
Message-ID: <YmbotwGzLn/Z9Fq5@google.com>
References: <1650636521-18442-1-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1650636521-18442-1-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 22, 2022 at 07:38:29PM +0530, Srinivasa Rao Mandadapu wrote:
> This patch set is to add bolero digital macros, WCD and maxim codecs nodes
> for audio on sc7280 based platforms.
> 
> This patch set depends on:
>     -- https://patchwork.kernel.org/project/linux-arm-msm/list/?series=631506

There's a newer version (v10) [1]

which should be ready to land now that 'Add pin control support for lpass
sc7280' [2] has landed in Linus' pinctrl tree

>     -- https://patchwork.kernel.org/project/linux-arm-msm/list/?series=601249

These are flagged as 'Queued', so probably landing soon.

>     -- https://patchwork.kernel.org/project/linux-arm-msm/list/?series=634203

There is a newer version [3] which seems ready to land.

>     -- Clock reset control patches

What is this? I don't think I have seen an upstream version of this.
Please provide a link, or if it hasn't be posted upstream yet make sure
it is done ASAP.

[1]https://patchwork.kernel.org/project/linux-arm-msm/list/?series=632316
[2] https://patchwork.kernel.org/project/linux-arm-msm/list/?series=633019&state=*
[3] https://patchwork.kernel.org/project/linux-arm-msm/patch/1650621734-10297-1-git-send-email-quic_srivasam@quicinc.com/
