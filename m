Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 949C12F0B78
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 04:30:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726841AbhAKDaT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jan 2021 22:30:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726766AbhAKDaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jan 2021 22:30:19 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF265C061794
        for <devicetree@vger.kernel.org>; Sun, 10 Jan 2021 19:29:38 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id 11so10143245pfu.4
        for <devicetree@vger.kernel.org>; Sun, 10 Jan 2021 19:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=+190HtGxYGthJ3UarYG4jBGiYtQEc6153YIJJk+ijNY=;
        b=LuCgDnHErXxvO1PGQ6i/XYWWhYB3y1kt4JQrM24JWllHTTOymwP5NiRWkT8Yhg8jDk
         jEpoV5AWOIM5uezdU9++Df5S1ztN25zpvqbXVByw8NFrkzhpDhUwNRfK4OASGHK4/PXe
         85Zl4tSt7+xCs8ms+/2+NIyPvvFWnNFMzb67B/WbhT7Xsoaaf8TrGbCvion0tPWzPfre
         qwV0j0F4imd9ZUb1/zAJgtuEZEBQ8Xt0noWtPgEUDu9eEFCk+pIdOhL85YDm7aUzFVDl
         Pw/MUwJ9sDVp5feHXyt3Y346Ok1YcT+vC1kdI1KfcZFDsVFgZWNuAdg1gzzK//lqS9y9
         /G3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=+190HtGxYGthJ3UarYG4jBGiYtQEc6153YIJJk+ijNY=;
        b=hkFRM22tq5430/he6n8VLYZzJuv8ZRZorevAkPQo87QwBtgQRYWqksfZsLMHk7TgKM
         WgA5eWZF22bpwBk68gWqWJWGAHupxd/eEEmwuN3oriE+zzZ6m3j7uaXd5WpNyftbxHlW
         5eB4ArfpYbe/mzJP2FOYZAd5XyRxnbsmYK9wiCTLUfSoLbx270h54gi/t5Af2/21vA00
         7YbIkDBGWg6MBUOku0uF2jajYDTZVuO0iMz3P2zAampC29P1agjcr22+QfJf3gGfH1Kf
         iPLUswn3F4MlK5eWB5jKy7ytWToIYqTrpXQqkx0rn/NEcvEPTBZ0yozqp1d+DmJ+uDAN
         DWzA==
X-Gm-Message-State: AOAM533htp+xMV0v50dWKuxDZo4KqJnvKBIbAHNnyvbs13/xfdfhiho/
        hgg6sYJX8nq6l1aW9Jjw42evEA==
X-Google-Smtp-Source: ABdhPJwwQFR7I7/0eiUTAGB7SUuXQ0WuUsz/4ODs/+uu4PeDeTMH0rlqowLXpZ/fV/xQ7w+hBPAYWg==
X-Received: by 2002:a63:fb49:: with SMTP id w9mr17867506pgj.403.1610335778268;
        Sun, 10 Jan 2021 19:29:38 -0800 (PST)
Received: from ?IPv6:240e:362:4bf:e00:57d:5da4:e49:50d? ([240e:362:4bf:e00:57d:5da4:e49:50d])
        by smtp.gmail.com with ESMTPSA id k25sm16744621pfi.10.2021.01.10.19.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 19:29:37 -0800 (PST)
Subject: Re: [PATCH v9 05/10] uacce: Enable IOMMU_DEV_FEAT_IOPF
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>, joro@8bytes.org,
        will@kernel.org
Cc:     lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
        guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, Jonathan.Cameron@huawei.com,
        eric.auger@redhat.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, baolu.lu@linux.intel.com,
        vdumpa@nvidia.com, shameerali.kolothum.thodi@huawei.com,
        vivek.gautam@arm.com, Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Zhou Wang <wangzhou1@hisilicon.com>
References: <20210108145217.2254447-1-jean-philippe@linaro.org>
 <20210108145217.2254447-6-jean-philippe@linaro.org>
From:   Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <2cef454d-d872-d306-ceca-c7ae1dbfea1e@linaro.org>
Date:   Mon, 11 Jan 2021 11:29:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210108145217.2254447-6-jean-philippe@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2021/1/8 下午10:52, Jean-Philippe Brucker wrote:
> The IOPF (I/O Page Fault) feature is now enabled independently from the
> SVA feature, because some IOPF implementations are device-specific and
> do not require IOMMU support for PCIe PRI or Arm SMMU stall.
>
> Enable IOPF unconditionally when enabling SVA for now. In the future, if
> a device driver implementing a uacce interface doesn't need IOPF
> support, it will need to tell the uacce module, for example with a new
> flag.
>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
> Cc: Zhou Wang <wangzhou1@hisilicon.com>
Thanks Jean
Acked-by: Zhangfei Gao <zhangfei.gao@linaro.org>

