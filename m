Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03BD53908E1
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 20:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232244AbhEYSZC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 14:25:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230361AbhEYSY6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 14:24:58 -0400
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1120FC061574
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 11:23:28 -0700 (PDT)
Received: by mail-oo1-xc34.google.com with SMTP id q17-20020a4a33110000b029020ebab0e615so5474659ooq.8
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 11:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=yLrEWP7K8W4M2KTxVp15RNvgy39Wo8hmbcRL1UT8wm4=;
        b=V9VWUnK0dVgC8ThICcYWKUrpc5Ij5G7O5GkEJ4p5ENwYCzL0XraIlL7+V2VympArHu
         fYoHb2HG1xYjs/HlXUnTUzDNQpLmw6k7RH93cL7rct8xz60XNId/S1K64RwtwiDtmbk8
         LPGbMKWTzXm/fhJM3V+0HuZgmj18yzuR5qlB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=yLrEWP7K8W4M2KTxVp15RNvgy39Wo8hmbcRL1UT8wm4=;
        b=XA+nC9JpwSDMd9Zkrp9SnHPf1qrNN4BmgntNt2wp9Um4sT0/m/0h5R1G4cJdFxXIa2
         mkFSa0l6LFWqgnV+RxYHJcPMDZzk9ht2veosIxoaqIBJc/YEYHH0mTN9xidIVi1mK8X7
         2ZNv8SZnZyGjhPqd6Z0N7spCBdJiK+SnKEiUqacvmEMmZGbib65pfKEoOH9Nsx8Nn/Vl
         G0Nd19ZP+3jUxncM2r7tzdG5aKyfkw0sa9Gl9+eWRs1h2s26Se9CBr/ELjg5T05+iJyr
         a1fulnwON1yGX4qrs92IAFm1g5OHkih1wtOu4DLmeWqQIWGvLj8HWoJ3qUfS9cUl6yTB
         PQhg==
X-Gm-Message-State: AOAM532FzwkrUOwMAXXBvL7ivMEiFmE6J84Ub9QGCs7sF75oCxpThuSx
        VxiXQCzjCOOslzuYaLrb+f1uYb8T7FCzm8nUg3AdQg==
X-Google-Smtp-Source: ABdhPJzqb/cUXWaFHPYbdlIHfd8m3yBFhec5Kh8+qcA+mY/y8sl8WzknhKEePGCSuaCP9Qxhq6MTXD6I9in9Oh14XbU=
X-Received: by 2002:a05:6820:169:: with SMTP id k9mr8907033ood.92.1621967007509;
 Tue, 25 May 2021 11:23:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 25 May 2021 14:23:27 -0400
MIME-Version: 1.0
In-Reply-To: <20210525133242.188603-1-senozhatsky@chromium.org>
References: <20210525133242.188603-1-senozhatsky@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 25 May 2021 14:23:27 -0400
Message-ID: <CAE-0n53MvSNZ+EZDLMzTzvvnQ-GZq8g29qxcEXQ-h9s-eQJ4Wg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: remove camera_mem region
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        Tomasz Figa <tfiga@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sergey Senozhatsky (2021-05-25 06:32:42)
> qcom camera driver allocates the ICP firmware memory
> dynamically, so the carveout region is unnecessary.
>
> Signed-off-by: Sergey Senozhatsky <senozhatsky@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
