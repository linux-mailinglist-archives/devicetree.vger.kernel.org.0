Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 440423D1A4A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 01:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230522AbhGUWbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 18:31:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230503AbhGUWbj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 18:31:39 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78F6CC0613CF
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 16:12:14 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id t4-20020a05683014c4b02904cd671b911bso3655916otq.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 16:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=MPq/5xe+ZFrc5ThTaYuC8k1u7ZZx3W3gcPTLJ7TqUVc=;
        b=Y05kIYu1Rc6yqQaGglurstZd9kUhswNFuOz4n0FMlXcPadby9Ug9bveEoYND5fgwJi
         PiUJiRw+PELZ31ItnqcfWq2mSgCTAE7a7FPwBmt728U+NqePRiXzW1SEaOEjdAZCQEFY
         VsB0ZeEUx6JQebpfCMhM+XBSHtwZxAdTgLr3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=MPq/5xe+ZFrc5ThTaYuC8k1u7ZZx3W3gcPTLJ7TqUVc=;
        b=CfNhGYIHqJwgel7H6RSCoWwTwHnhLfu4ezBizR2cyE88as+UQClE+qGErcwRNVuKed
         xGjZmmoUw9dlNnNDxihKt5+4YZmYkd3VgEbpF7u3CHeaqEuW1ZUBpGz7Z2HfznW9RjHw
         V9a+38ygWtoCtorkjRkP84DbCPXWH/J7gQTwI6zikL2wwYUwlUd4F3PJNFtsKKnc7t9I
         C/+vVNvsM27R+dtN+NetSfXAYrdPzF/EgR8iLZa2TvIZqXZuqW3BDjtyspNdaKMxrCQ/
         Fi0T9qzhS8UC7wVFLPtODgvJkE/w5KROkeOHKYqkH6cJhF+3xvJleI9o3Xaw+4A9vzJk
         ISgg==
X-Gm-Message-State: AOAM530+8wWRYrSFQvvgcDhWiNVLoiKBfJ/qZVtQjHKZ90T7FnpYWjEJ
        vX8mplHUzPxVhQDq5qo+dfcaJm/KkhXajj97qAeC9w==
X-Google-Smtp-Source: ABdhPJzglFe0sSuxI2Kvcg8hWnhsIoLyZGok/Wp8G7gjYlEThZGGtf81RU4aHu7fYlFhlWtPY3Aipz35Jj9FSk0lAJ4=
X-Received: by 2002:a9d:8c7:: with SMTP id 65mr27882594otf.25.1626909133892;
 Wed, 21 Jul 2021 16:12:13 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 23:12:13 +0000
MIME-Version: 1.0
In-Reply-To: <1620800053-26405-5-git-send-email-skakit@codeaurora.org>
References: <1620800053-26405-1-git-send-email-skakit@codeaurora.org> <1620800053-26405-5-git-send-email-skakit@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 23:12:13 +0000
Message-ID: <CAE-0n52BMdoRHe-oy2_8fji8KfBF8wQD9BR-MuRajSp7Keo79w@mail.gmail.com>
Subject: Re: [PATCH V4 4/5] dt-bindings: input: pm8941-pwrkey: Convert pm8941
 power key binding to yaml
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        satya priya <skakit@codeaurora.org>
Cc:     David Collins <collinsd@codeaurora.org>, kgunda@codeaurora.org,
        linux-input@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting satya priya (2021-05-11 23:14:12)
> Convert qcom pm8941 power key binding from .txt to .yaml format.
>
> The example has been removed in favour of full example being
> available in the qcom,pon.yaml binding.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
