Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D46D83EF890
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 05:31:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236482AbhHRDc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 23:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236055AbhHRDcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Aug 2021 23:32:25 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88EF0C0613C1
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 20:31:51 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id u10so2547147oiw.4
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 20:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WN4dMj5d20fATkNAOc2ycF2zHpaO1GPJJSRhHXja7SE=;
        b=eJhaLJfma1JQ5TUG+s2ia19ac669B2P5fCw2l5SDt2KfGVOg1G/GKqJAYkhZzznN9Q
         UvWMan8aRQfSlT7BNpfBpHgxCWb0o9zNEXZ1uXG7A8CFAbmqDYq217zaJ9MQYYEYV4kk
         Bf0KiLDGuI7NTTpmQUBmgeAinkn3u+emo+SMlcq3UxJ+aJKECzaO2YWSZsE3F1Im+oGa
         qf3qq9JDCN6Mac93pWOo7YsLJDQKaN3JG+kpPj15+HiCxJfTFrGUCv+BD9uyry//6hh9
         qFSX12EoEuSVqSYU5RDr0SrjRWdF+ov9DvIZHpjGWSfj7IuFAgJ+S8j7B9qX2QQ/9KA5
         rWfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WN4dMj5d20fATkNAOc2ycF2zHpaO1GPJJSRhHXja7SE=;
        b=OoKL1EeQP5lf5Pc6+MRVRWp7qR9122+bN+GozpOgn0djutR3lOdgMduMR0oi9285Ea
         AM5nzEmdy6X48K9KYpUdAaiXmNa3SxvxtSSG7IIH+60f6rE4iLN8MYqmXFblekPDALSB
         cEXNmtqzVjyVEVhm9Dp9oJgYiZKR38ZOGtmCYQqkLyhxmlwBe7/BYgN7yvfu61FDIRDc
         d6l5HFy8JyIE4Z+0N47EGebi1vYKZD/yeDyx2SW0yQFG8f58pzfHpwUHaZFyOYlx1/Pc
         T517BpXkAjOtx6YNoCuI9uAMDZdIWYi3821bkP0kn6D+V3+xWPv48xZuMpmqglSlIYA0
         u47A==
X-Gm-Message-State: AOAM530fo0jjIiS69UsWAxMufMfQzxKf1N+T1IXHYb0qmXhs87uUD9sG
        m75RZR3VP9FAmdPlQ/6ML3dDVQ==
X-Google-Smtp-Source: ABdhPJzgyuYUy7LVLHvBOog++sY2NASP245ebr4tWB0Ur51NO1QI5VJ1GtOePi85x+y/FKUpgfHKfw==
X-Received: by 2002:a05:6808:2020:: with SMTP id q32mr5157063oiw.30.1629257510865;
        Tue, 17 Aug 2021 20:31:50 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q187sm1026923oif.2.2021.08.17.20.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 20:31:50 -0700 (PDT)
Date:   Tue, 17 Aug 2021 22:31:48 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Yassine Oudjana <y.oudjana@protonmail.com>
Cc:     Andy Gross <agross@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/6] interconnect: qcom: Add MSM8996 interconnect
 provider driver
Message-ID: <YRx/JFLXHvIlKgOR@builder.lan>
References: <20210811043451.189776-1-y.oudjana@protonmail.com>
 <20210811043451.189776-6-y.oudjana@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210811043451.189776-6-y.oudjana@protonmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 10 Aug 23:37 CDT 2021, Yassine Oudjana wrote:
[..]
> diff --git a/drivers/interconnect/qcom/msm8996.c b/drivers/interconnect/qcom/msm8996.c
[..]
> +DEFINE_QNODE(mas_cnoc_a1noc, MSM8996_MASTER_CNOC_A1NOC, 8, 116, -1, true, -1, 0, -1, MSM8996_SLAVE_A1NOC_SNOC);

Unless there's strong reasons against, I really would like for us to
follow sc7280 and avoid the DEFINE_QNODE() macro for defining the nodes.


That said, I really appreciate your work on bringing us an interconnect
provider for MSM8996!

Regards,
Bjorn
