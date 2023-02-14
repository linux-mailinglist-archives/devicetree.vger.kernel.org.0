Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A23869587C
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 06:26:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230507AbjBNF0v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 00:26:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjBNF0u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 00:26:50 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93FDB18B29
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 21:26:48 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id oa11-20020a17090b1bcb00b002341a2656e5so2887655pjb.1
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 21:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p8kKvdqmvpHr+41blCI28NnpNACNfpNUrrNduJ+T5IA=;
        b=mm8Jbxqx2bW8q1vBlyxFTOTTUXrqCFQv/rjnGUFy+0/CiNVUF/zcoi3+1JK60kiFKz
         Fl3KBDfHLOYFSradpeBbXmj3rHgOYD/I8Ddi6MLGhBSodBU2QkRYiWUj+PIvs392A2Vd
         r5m7XvX97zEb+NJI3wP7INy8bKzQo3rDDkA0eaExOSgIhu5bBoGzZsJeNvRH0CYlt4Kb
         LCpA+BvwfEEin6Dd+GWLAtnd7285Dlt8s5rDZmhYRrFe3iaMFj33KgTnskIHHEzJ2mqG
         nZdD7vjDzuchj1p7/Y3Ko2FZ5PlVBGth26ZTJaAV/BgZ0rcIR3VA9FrYQqBEo3bsbwX0
         SHRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p8kKvdqmvpHr+41blCI28NnpNACNfpNUrrNduJ+T5IA=;
        b=viCuyiX7rLM/FJXV6WBaIQbmZOhnx7+VejXQj8eAJRrUlwBNevrxGyhBbpWVYN8P/3
         s8eQgnLnmGLIMcS8x8aHTaqNETc2AVjFPjZ2N3b66rSKf0dagjFgZi3Pp0tQZACOxZ2J
         JeL/ySRMbW4hxQTJLt/Ed4gUxLBo7NH5GqRbTn47+lflID/ZZ55TfTA7cDaO92sYgIOC
         EQpImFX4rSK586JTMdlZ0i5lQokDcl1kHKilsFbrigKgJ5h4G87MviPb/n8o0M/G5IKX
         QWE4QXk+d1jlVK9d10vGfZZ9n1uTt50d6PNsTGhOjBykdawVQCMj/BoHkz4d37MLKMsC
         PjPw==
X-Gm-Message-State: AO0yUKVPI7297cfkvFG792owD8FtUSAN6s9LdFAPAndtnF1x0sX/5okM
        LJJf+l2epjwUQWkTOY/+RlKVEA==
X-Google-Smtp-Source: AK7set+2be1/LmwMXDSq6PbLICdWuFZBa4mhYfPoH5Hlfx+LQKOQWZ9Uuc61szH5thjNweW8XiP9Xg==
X-Received: by 2002:a05:6a20:734d:b0:bc:ce49:79a7 with SMTP id v13-20020a056a20734d00b000bcce4979a7mr1234916pzc.18.1676352408020;
        Mon, 13 Feb 2023 21:26:48 -0800 (PST)
Received: from localhost ([122.172.83.155])
        by smtp.gmail.com with ESMTPSA id t3-20020a1709027fc300b0019949a3be88sm9080163plb.138.2023.02.13.21.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 21:26:47 -0800 (PST)
Date:   Tue, 14 Feb 2023 10:56:45 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Christian Marangi <ansuelsmth@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/3] dt-bindings: cpufreq: qcom-cpufreq-nvmem: specify
 supported opp tables
Message-ID: <20230214052645.khcr3qtkhymfyhkq@vireshk-i7>
References: <20230208153913.24436-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230208153913.24436-1-ansuelsmth@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-02-23, 16:39, Christian Marangi wrote:
> Add additional info on what opp tables the defined devices in this schema
> supports (operating-points-v2-kryo-cpu and operating-points-v2-qcom-level)
> and reference them.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
> Changes v6:
> - No change
> Changes v5:
> - Swap patch 1 and patch 2 to fix dt_check_warning on single
>   patch bisecting 
> Changes v4:
> - Add patch split from patch 1
> 
>  .../bindings/cpufreq/qcom-cpufreq-nvmem.yaml  | 35 ++++++++++++++-----
>  1 file changed, 26 insertions(+), 9 deletions(-)


Applied. Thanks.

-- 
viresh
