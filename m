Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2EB7C1743AB
	for <lists+devicetree@lfdr.de>; Sat, 29 Feb 2020 01:10:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726720AbgB2AK5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 19:10:57 -0500
Received: from mail-lj1-f193.google.com ([209.85.208.193]:41113 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726627AbgB2AK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 19:10:57 -0500
Received: by mail-lj1-f193.google.com with SMTP id u26so5099488ljd.8
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 16:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MtiiDQqIKSwOiG748ha0RsiYW64G2u9tJs1YfUEZ07M=;
        b=LkkYFkw5qXgxsxLKLRdhuf8VX9Bm0uJFBVYjbOycmkZ2HF5N7EPXaXp5qIFbwJMFFF
         bM92NEf1nz9sxFZEyqdT+8QdTXebCc1ff7rExRiLkcCgeGCasdpJNEtXqrdlGddyDURt
         r3D0Q3/kz0FrTEkQJfssCDRmWawC7m+DPFZws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MtiiDQqIKSwOiG748ha0RsiYW64G2u9tJs1YfUEZ07M=;
        b=pZAP4NTnrzGpF4guj2JKbjlWiklByFb3yoc+8qdwk0mnj/IShLjD6i+NQO2VEjhMf2
         VxQZmmEmz/8Ng6fb9YQWDiwO85ZzDTBhclocZqSve4XE6Kex/3Q6QJpELBRG59HgvaHu
         6uG1R8No9g06rpkoQIEBWfGg2NKQGnerFeGGjEJdyBcY71Yput4OObaSgTaMw5F9R7Wb
         vM28xk6YNJFZxvvKX3RXxJo6w1wF7GP3r+bZpeyjg8OFRTnn4766DwUCNmK/miZu1TcM
         HTnZRiphymjkEHyGcA5iEO7pFzAwzfXrUAlK3WbJySPyzigXACU5KP1vBD0Pru1rliWM
         WyRg==
X-Gm-Message-State: ANhLgQ2S3XFPj921DHnCV23W6gu1m7nFcObPpUJzyLqCezryIhcOQDpk
        7G61ZD4OcxgRWSYp8Yt4eOgdv+s7Jv8=
X-Google-Smtp-Source: ADFU+vsFTkkZR4vkfku1hzS2GHfd3Yh7+oZLactdxdruxLc+QjJfkfv105Ybdtlwn2xIyS0URCBYkA==
X-Received: by 2002:a2e:8090:: with SMTP id i16mr1142320ljg.4.1582935054792;
        Fri, 28 Feb 2020 16:10:54 -0800 (PST)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id r10sm7684853ljk.9.2020.02.28.16.10.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2020 16:10:53 -0800 (PST)
Received: by mail-lf1-f53.google.com with SMTP id n30so3381733lfh.6
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 16:10:53 -0800 (PST)
X-Received: by 2002:a19:8585:: with SMTP id h127mr3874662lfd.196.1582935052501;
 Fri, 28 Feb 2020 16:10:52 -0800 (PST)
MIME-Version: 1.0
References: <20200227105632.15041-1-sibis@codeaurora.org> <20200227105632.15041-4-sibis@codeaurora.org>
In-Reply-To: <20200227105632.15041-4-sibis@codeaurora.org>
From:   Evan Green <evgreen@chromium.org>
Date:   Fri, 28 Feb 2020 16:10:15 -0800
X-Gmail-Original-Message-ID: <CAE=gft50mTp6-u-Dw5wzL=1GGTsZB+HoM=5NDSNxnVVwVfA51Q@mail.gmail.com>
Message-ID: <CAE=gft50mTp6-u-Dw5wzL=1GGTsZB+HoM=5NDSNxnVVwVfA51Q@mail.gmail.com>
Subject: Re: [PATCH v5 3/7] interconnect: qcom: Add OSM L3 interconnect
 provider support
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Saravana Kannan <saravanak@google.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Odelu Kukatla <okukatla@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 27, 2020 at 2:57 AM Sibi Sankar <sibis@codeaurora.org> wrote:
>
> On some Qualcomm SoCs, Operating State Manager (OSM) controls the
> resources of scaling L3 caches. Add a driver to handle bandwidth
> requests to OSM L3 from CPU on SDM845 SoCs.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>

Reviewed-by: Evan Green <evgreen@chromium.org>
