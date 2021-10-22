Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC9CD437304
	for <lists+devicetree@lfdr.de>; Fri, 22 Oct 2021 09:45:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232149AbhJVHsL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Oct 2021 03:48:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231773AbhJVHsL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Oct 2021 03:48:11 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 366D6C061764
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 00:45:54 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id y4so2184741plb.0
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 00:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Z/rD25ghdcHlFZlNXXw4T1nq9tn6Xxk48eCfRlYkZn0=;
        b=FX/TUAYWjTslXC8Hp5FgJb0xZEBSJOzysJ37Fnt+xZr2D0kZlHWAjM5LriAbIwfP6J
         K5zoimBILjYUJt/U/9WNXjDhJWd2MFRosKU0N0tttXl7tfAwg7bYzoodEV/xEv5EMthu
         Cz+NDego1BmAJNbXiyXbTmwlzEWT3J8KcjkBQQAJ0KrpiFJZVA3RF59nDOVNs2aOgFtz
         os0Z6/W10jytQwM59OGLWN7ld3jRlb+jcTgOd39/xhzIWzmjZmT/ZBDKJX1Jt2DbUbtv
         YvU1EmFPgeEQ5oM7zmozZ1Mi6bNgP4Tx6scd+8J2VIWeS3NlW/MpdZmMbc045v/lxPVq
         F5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Z/rD25ghdcHlFZlNXXw4T1nq9tn6Xxk48eCfRlYkZn0=;
        b=kShC9ITZYhniwBHDImc3qjIhXUM95oftwsbvgIIT+Ln8NHJaQVZASpQChQrXfjYoT7
         jxGg7wV6NrA+319TxuqV4qexafaCqfADGbZiRch2V3RLGJQa77OqNWRlCKXI/kvG56aW
         dUnOPSussOtxRpHqhy6pY8B5JSl8to+OoN6mIndqSv9di30tKNIUfNYrA7IxK9PMZeYv
         YOOzkbAgGrMs22KPHz5pYaSR7ztXSqVkFEukZMsyWPiXlSQXhkZclo6E4QNuBj64/AWY
         uEjAmIWZGCVNaj+wlUyeIXJcmnOBl7hj1MeFF+3yPNtPP+TV35yETvbfjf8aVmx+e9Y3
         aA3A==
X-Gm-Message-State: AOAM531s7is9pM81okiU6frhsQqJXo/Em+Cm2SpanDKLDlDVuxVesGh0
        FdBUEGA538ZfpY8De6KP46rFCg==
X-Google-Smtp-Source: ABdhPJyDYZOQap4PdARqH3xauuUfV1TALSxuYRwszMBi3zk3YQluIWNGdBgKPKjjOCAKjoC1L8kxTQ==
X-Received: by 2002:a17:90b:1e4b:: with SMTP id pi11mr12764225pjb.179.1634888753689;
        Fri, 22 Oct 2021 00:45:53 -0700 (PDT)
Received: from localhost ([106.201.113.61])
        by smtp.gmail.com with ESMTPSA id f15sm9647795pfe.132.2021.10.22.00.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 00:45:53 -0700 (PDT)
Date:   Fri, 22 Oct 2021 13:15:51 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Rob Herring <robh@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, Nishanth Menon <nm@ti.com>,
        David Heidelberg <david@ixit.cz>, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: opp: Allow multi-worded node names
Message-ID: <20211022074551.ro22d7xj3idisvzv@vireshk-i7>
References: <20211019231905.2974-1-digetx@gmail.com>
 <YXAr4OlhucAibMlH@robh.at.kernel.org>
 <20211022044334.4yn3i4kwinbrjicd@vireshk-i7>
 <48de7f40-deda-739d-96ca-e61ec5a0b257@gmail.com>
 <20211022065029.x5a5oh7mh2sjofey@vireshk-i7>
 <9798d34b-4886-9d4a-9fb7-634aa323af02@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9798d34b-4886-9d4a-9fb7-634aa323af02@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-10-21, 10:39, Dmitry Osipenko wrote:
> What we currently have for Tegra is a tegra-opps.dtsi and tegra.dtsi
> which includes the OPP's dtsi.
> 
> the tegra-opps.dtsi has this structure:
> 
> table: devname-opp-table {
> 	opp: ...
> };
> 
> and tegra.dtsi:
> 
> #include "tegra-opps.dtsi"
> 
> device@0000 {
> 	operating-points-v2 = <&table>;
> };
> 
> It just occurred to me that there is no need to move all tables to
> tegra.dtsi, but change structure of tegra-opps.dtsi to:
> 
> device@0000 {
> 	operating-points-v2 = <&table>;
> 
> 	table: opp-table {
> 		opp: ...
> 	};
> };

I thought you would have already thought about that and I was surprised when you
saw the tables are big enough to be moved. I was wondering what does it really
mean :)

> Then there no need to change current naming scheme. Let me try to
> implement it and see how it goes.

That's good then.

-- 
viresh
