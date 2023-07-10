Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1A9574D9B6
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 17:21:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231808AbjGJPV3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 11:21:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjGJPV2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 11:21:28 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F25E3E8
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689002439;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=KB94weOwoWMBQ4tLFhB7umLrTAyrFqDhZCrrtSY4RjA=;
        b=RSEGjmcJsWzzUFpOWTIaoVmXIGKVFQTLkIi3mXGsHCgLKXkYS8gGPXnqTZHmzGMY1V9bY8
        j/QhLXaS4vAlnOd9U2QAT9yQftVNuBRopHRX1kfcR2kxztuGs7/ulhw7R/ZofhAs32j2t2
        NtL7BRoU6+Pqygs2WSphDSSLyWRSMlg=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-576-nIkbzHhrMRSzHUbLO2choA-1; Mon, 10 Jul 2023 11:20:37 -0400
X-MC-Unique: nIkbzHhrMRSzHUbLO2choA-1
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-57320c10635so54288827b3.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:20:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689002436; x=1691594436;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KB94weOwoWMBQ4tLFhB7umLrTAyrFqDhZCrrtSY4RjA=;
        b=lrVO4TH5Fu7WA2VXHmnBDsSCAd1nik7KDDS2y7Br+kHtZoXfHw8rSr7FWHKJCEzM4z
         hQO6ctNq30K9ORhUPw4/ePHGVX7MB8TceXJ8l3nXQPAmfJpZ5iypdHLPe3Aiz7F6pKL1
         i+OBn8FhvmCK404O8gWPvoamsaqTlVOb8HTzggKk4+RlOVA2K0G9445W0FXbuUmUhj2r
         ymL8ZTA3603D2rx8kj8ILszW8/6nk5O1CfEskv/o7HORhugt9VVne83oU8GbT/+q8Vrg
         virqMgoPgS0mszOVvA75c5BDouZZn6+3PjQGZnDfvP0Pwwv87r6Uv67uVXkW5h7Koce9
         h3TQ==
X-Gm-Message-State: ABy/qLZ83V2+Hpeuz02wj6cg6eq9fsB6E9Z4To/Sm/6Q2tEnk7bMOjQe
        tcOuJthzbh6pZ//yHHfembJoWpGgsIvzWA+QdHehGiwsa4ZtIxFY9beOtlhbjfDRhNUwkxoyRjQ
        kMVIukZBlPwRDEr3K6ZEkDw==
X-Received: by 2002:a81:6604:0:b0:575:4b1c:e5ea with SMTP id a4-20020a816604000000b005754b1ce5eamr12259969ywc.47.1689002436576;
        Mon, 10 Jul 2023 08:20:36 -0700 (PDT)
X-Google-Smtp-Source: APBJJlH+YQLgXa3ThTm8gLDWAioQ62hJ6Tirv8hlhia+ImkkyVm4OGmEzS4D5sR6FzMA+VXStzjR8Q==
X-Received: by 2002:a81:6604:0:b0:575:4b1c:e5ea with SMTP id a4-20020a816604000000b005754b1ce5eamr12259953ywc.47.1689002436338;
        Mon, 10 Jul 2023 08:20:36 -0700 (PDT)
Received: from brian-x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id h126-20020a0df784000000b00559f1cb8444sm9956ywf.70.2023.07.10.08.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jul 2023 08:20:35 -0700 (PDT)
Date:   Mon, 10 Jul 2023 11:20:33 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: Re: [PATCH V7 0/2] firmware: Add support for boot_stats
Message-ID: <ZKwhwUnKR7vqQZms@brian-x1>
References: <cover.1688533340.git.quic_schowdhu@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1688533340.git.quic_schowdhu@quicinc.com>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 05, 2023 at 11:02:30AM +0530, Souradeep Chowdhury wrote:
> Qualcomm's proprietary Android boot-loaders capture boot time
> stats, like the time when the bootloader started execution and at what
> point the bootloader handed over control to the kernel etc. in the IMEM
> region. This information is captured by the bootloader and populated on
> the device tree properties "pre-abl-time" and "abl-time" which can be
> be viewed from the user space like as follows:-
> 
> /sys/firmware/devicetree/base/bootstats # cat abl_time
> 17898
> 
> As a part of this patch series added the bindings for boot-stats which
> was suggested in the v6 of the series. The link for the same is as
> follows:-

Should boot statistics be exposed to userspace through the qcom socinfo
driver? I see that the socinfo v19 metadata has fields for the boot core
and boot cluster [1], so boot timing wouldn't be out of place.

Brian

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/soc/qcom/socinfo.c#n572

