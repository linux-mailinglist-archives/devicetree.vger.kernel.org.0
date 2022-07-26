Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75F595812C6
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 14:06:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239067AbiGZMGC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 08:06:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239064AbiGZMGB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 08:06:01 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CB272B194
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:06:00 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d10so13021201pfd.9
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=GRV637Y4Hq+GGIQkkjEXQ8JU+rviL8vESxDwxmAB9Hk=;
        b=ZFoGF87qKm+mERgACU9Ei0+Q4qsMDe8+CRnpRTtbxU4Cjj0BSuj1h+p7no8kATvKGL
         eQIX/TqlRkzwWT3LhDMUwoPJT6xJ4SrFhNmdSo/QnpC1mIIQojShEGZnrgQ63F7TqPsC
         F1aD8d6ctM3tcnMhx3mQx+yYXVH+SC465hblS8G9z5ZkHsEHQ6BQLJAa6/Js14T4DhfS
         Cdppo+U/hZ3jp10FRKbYf+GAZFj1AgT97xx8kF+dTavBoZvKLgccN7SffflAF+EOVw/N
         QT1ClkvaSxzYdIoEAj7dLQdk5eVd42+QxBKEX0BWC6DdqDFk6kSwKijSFLo6wyhpxHTb
         BKZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=GRV637Y4Hq+GGIQkkjEXQ8JU+rviL8vESxDwxmAB9Hk=;
        b=p1y4AwwY/jo7w5l37ZnxnCz3urrYOTPG/OlYE6tBfo7FCKKKrIAuR4f1gbTIzTnXpP
         fid24ol1Au8ZpN+w8M6S548/T0DcQhQSa5B3yX4Fy1hnAGHf2O34+iPMCjX4r096Uuo0
         ANih8Q1RXfb2pgcbeGrAvLAWzMxcbpHl0F8VVO61w/gCyqR0jrCfJZ1MazWrGEG/E/rV
         i8qdmxeFI+jHMThV2yAd+o5FBbdPXScyUItkgLjBuOQfyPSp5HOSOZd4PGkFMuV/fvTZ
         0wMYI8qR/dcd0DyLCsnx2cW+W1r7ee3JOJ611oRcswQlSSIT8FQdWkHbqQS31FiGej0n
         Hn3A==
X-Gm-Message-State: AJIora/QwMVrB/tF3r2NKT9/Xvf/S7WO/+9Idqi/f3RyGrSJrTaisXsO
        kW2Lc6/qYwhvplg/m+671+o=
X-Google-Smtp-Source: AGRyM1syNQBGIKS83yy5jTR3x5LVqL7/qutl2fGV86mKR8MSC71R7on8Rvy9Eyuda7md43aw8EQ4zQ==
X-Received: by 2002:a05:6a00:1a92:b0:52b:ac3:7964 with SMTP id e18-20020a056a001a9200b0052b0ac37964mr16890978pfv.31.1658837160065;
        Tue, 26 Jul 2022 05:06:00 -0700 (PDT)
Received: from a-VirtualBox.tendawifi.com ([101.224.225.209])
        by smtp.gmail.com with ESMTPSA id t9-20020a1709027fc900b0016bb24f5d19sm11459842plb.209.2022.07.26.05.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 05:05:59 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        broonie@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
        ckeepax@opensource.cirrus.com
Subject: Re: [PATCH v2 1/2] ASoC: codecs: add support for ES8326
Date:   Tue, 26 Jul 2022 20:05:23 +0800
Message-Id: <20220726120523.127134-1-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220726092058.GG92394@ediswmail.ad.cirrus.com>
References: <20220726092058.GG92394@ediswmail.ad.cirrus.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>> +	.use_pmdown_time	= 1,
>> +	.endianness		= 1,
>> +	.non_legacy_dai_naming	= 1,
>
>The non_legacy_dai_naming flag has been removed, you will get
>this behaviour by default now.

Do I need .use_pmdown_time? Is it now enabled by default? 

Thanks
