Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8A13898796
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 01:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731288AbfHUXCL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 19:02:11 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:44946 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731285AbfHUXCL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 19:02:11 -0400
Received: by mail-pl1-f195.google.com with SMTP id t14so2165906plr.11
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 16:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NpuoQpLKK7WyEkPSccJxDwY6STNHznjukxBqZ31nzB4=;
        b=OzsNA61dc5J+KQA9dM2aHRJYNGKNDPTCblKWMfh4/UWZQleUwplGb5CCKwPToD2cAx
         FcMT/7tDtdVWavTPAWVuj5i6ncwyz/OL+I5ZYxCGCVDAQc6/h0IbKyyzsHuaenGNWz2t
         kVRQWGtQDOvlsg9SnUnKU5a8c7Rl2oVR03N89QrWEiFdqERXBcO8tLGd2qenDJtofH/S
         CTg+KgIqan+qgQUiT+ijzNLnvIBfAYWyyggsooT7jNIIwN8LTAHCRtPosnqlYk1Tdn29
         +heKXNQ+NGewltTzenkU+cpu5vI4OJ5qup2kjb28r5SW2hZ961Aw8oyEZV0ZfLcP/dxf
         WLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NpuoQpLKK7WyEkPSccJxDwY6STNHznjukxBqZ31nzB4=;
        b=NXQ+1lsqKqTWST/8hx5WIU/03iLBrRd5QPxwnGNL7u4owq9ysz8vafxPkVx5d34WOL
         PUcknK1XgZOcib1mydWq3+N0/tsnSP1WBwV4v9PVh/5NRtsguJ2q4lpTZ0QOFFZc5fdl
         JGV0aZI1o97Na8oN3z+XKTzKqft9GRgQ0/URh/zwxcp8gjqnyIguGIQmCuFly5ciRcVG
         FU7fHMFc4ffI/56RWpZp/EaAgolxZd01rH2QOORBki8tKgh7qstinNNVtyyBmuOXf7MT
         u6NhbZQCT6An8otxAVit3GneBVGsbtNzj8lUp652S/bok6TXF/ymNXE2+JgX4odrRojG
         bd5A==
X-Gm-Message-State: APjAAAU94K/72AuKPz0Kcr6PhZ5SzmHgZDQOffIw5+Ur8Ouv47SVPTou
        ysRF0bOB+5YPO65cOcR/NOyXqg==
X-Google-Smtp-Source: APXvYqxkzHLGY8L8dgDlNxoq4G+xKv8wVs2YvpjbObYmqSCZZWIvjwfgn1krBkgU0vu+qoeM1SVaXg==
X-Received: by 2002:a17:902:4201:: with SMTP id g1mr36449071pld.300.1566428530503;
        Wed, 21 Aug 2019 16:02:10 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 67sm968321pjo.29.2019.08.21.16.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 16:02:09 -0700 (PDT)
Date:   Wed, 21 Aug 2019 16:03:56 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     robh+dt@kernel.org, vkoul@kernel.org, aneela@codeaurora.org,
        mark.rutland@arm.com, agross@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, jassisinghbrar@gmail.com,
        clew@codeaurora.org
Subject: Re: [PATCH v2 0/7] Add support for Qualcomm SM8150 and SC7180 SoCs
Message-ID: <20190821230356.GB1892@tuxbook-pro>
References: <20190807070957.30655-1-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190807070957.30655-1-sibis@codeaurora.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 07 Aug 00:09 PDT 2019, Sibi Sankar wrote:

> This patch series adds SCM, APSS shared mailbox and QMP AOSS PD/clock
> support on SM8150 and SC7180 SoCs.
> 
> v2:
>  * re-arrange the compatible lists in sort order
> 

Applied patches 1-3 and 6-7.

Regards,
Bjorn

> Sibi Sankar (7):
>   soc: qcom: smem: Update max processor count
>   dt-bindings: firmware: scm: re-order compatible list
>   dt-bindings: firmware: scm: Add SM8150 and SC7180 support
>   dt-bindings: mailbox: Add APSS shared for SM8150 and SC7180 SoCs
>   mailbox: qcom: Add support for Qualcomm SM8150 and SC7180 SoCs
>   dt-bindings: soc: qcom: aoss: Add SM8150 and SC7180 support
>   soc: qcom: aoss: Add AOSS QMP support
> 
>  Documentation/devicetree/bindings/firmware/qcom,scm.txt      | 4 +++-
>  .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt    | 2 ++
>  Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt | 5 ++++-
>  drivers/mailbox/qcom-apcs-ipc-mailbox.c                      | 2 ++
>  drivers/soc/qcom/qcom_aoss.c                                 | 2 ++
>  drivers/soc/qcom/smem.c                                      | 2 +-
>  6 files changed, 14 insertions(+), 3 deletions(-)
> 
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
