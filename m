Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71A28724517
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 16:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237115AbjFFOAK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 10:00:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238200AbjFFOAH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 10:00:07 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63A32EA
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 07:00:06 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f6e1393f13so51569335e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 07:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686060005; x=1688652005;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FwrMrJM0MbRtGcxqqd7/qoRa+Z48fgcXIKuxfVUvplM=;
        b=Qmkebezhd3bE3EvClEVx5a7mjquFqdwFKJ07a+K/AxFUAUuZLUzo+nJmpQh0A1yT2c
         Kseq4TT0aRD3LwDElehU16MKuowQDxTagXLfA+S2b9hCQkgoCb+B6EXJJDuZ0N5zENVv
         aQXBjdLHxHKnWazjp2gv4X85tqhJ8MXmp8xYbReBJ6riWDDaUmpesbk5nH+H+j9BLFr+
         QBZZfqfPTE/DJ+03sI6+cvdy0DPOJdkAiRf7xQfCvC0d7D9j5RW6ozVBibrWo1Toonq7
         jLK6vvN7LyMlsKZ7ADisxhcWO+C+lAzJonHXyuQXiB9TmJMl36QVEdRf39rfR+RLWvfZ
         /l2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686060005; x=1688652005;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FwrMrJM0MbRtGcxqqd7/qoRa+Z48fgcXIKuxfVUvplM=;
        b=Ea/5spBvsL6g3kRt+KgJnwjPg7X8Z7Vp4AXOEmjMRs9BclC8q7+Ku5mAWSVZxAYwWp
         ghvTxcAkrrsS2xBrZvceIgmoiMXXKGN6tcvE3i0jj4hfbx0hSr/5+q9+MwjdSaTH8Sxq
         JHNjPxyJjuhUGGmw+MNQZl7tJuRQIVRETZph8osjPIXUvf5o7rFUdBUzIA+O2qQpyx9J
         LvPV93KBCk9dQtSPDVDQBPAvDV4iaWkcmYehY+p6IGbxVLZ5I2l0uivFUucfnh7A5QCH
         WOZJq0BqQuj10Dw8dngpqG2eb+4FmedZuzWEZknR/RULN1Gm2N0x0JtZAVbQz7CjWsfa
         eh0A==
X-Gm-Message-State: AC+VfDzSf7Vneo0lb5U6GbCYI2lkRF4uoVhqHkHcDkQvoY15CPTgpGLA
        yfuTPCBUmvWMLEcuTwhnxRXi7g==
X-Google-Smtp-Source: ACHHUZ4ccc0T1eCTcxB1MhwmrQqdwiijiuxyeqJgwleyD1UPH+KZBBX2FUY5GnJZiKflEDdNGeHzAA==
X-Received: by 2002:a5d:5102:0:b0:30e:4c8d:c6c with SMTP id s2-20020a5d5102000000b0030e4c8d0c6cmr1743312wrt.55.1686060004870;
        Tue, 06 Jun 2023 07:00:04 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id y14-20020a5d470e000000b002fed865c55esm12639517wrq.56.2023.06.06.07.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 07:00:04 -0700 (PDT)
Message-ID: <1dd3ee51-f1e8-2a4e-f0d5-dd61ee5206f2@baylibre.com>
Date:   Tue, 6 Jun 2023 16:00:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v12 3/7] iommu/mediatek: Adjust mtk_iommu_config flow
Content-Language: en-US
To:     Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, iommu@lists.linux.dev,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        mingyuan.ma@mediatek.com, yf.wang@mediatek.com,
        jianjiao.zeng@mediatek.com, chengci.xu@mediatek.com
References: <20230602090227.7264-1-yong.wu@mediatek.com>
 <20230602090227.7264-4-yong.wu@mediatek.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230602090227.7264-4-yong.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2023 11:02, Yong Wu wrote:
> If there are many ports in a infra master, current flow will update
> the INFRA register many times. This patch saves all ports to portid_msk
> in the front of mtk_iommu_config(), then update only once for the IOMMU
> configure. After this, we could avoid send too many SMC calls to ATF in
> MT8188.
> 
> Prepare for MT8188, also reduce the indention without functional change.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

