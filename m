Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 655AE3D1A46
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 01:12:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbhGUWan (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 18:30:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230505AbhGUWan (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 18:30:43 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A329CC061575
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 16:11:18 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id o72-20020a9d224e0000b02904bb9756274cso3631815ota.6
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 16:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=l6NCsljiQrmdmWs5o+gfYgXEIbXvOSPe/7s85UmcUXY=;
        b=Ng2sdbS+bbOryLSPSyNKeMVAf5mGYfLp6eg3+fKUB/+chx8u8IoRiUVIPGFW4pDqsb
         YJkC6+Tt5wtHSzJ0SR11hqOPDULPmiJEQWqfFrE+b4iQXYA/YMyRDVx6aFRzEgzxgi+p
         EQwWkKFKG2v2uTbDUpIdmioqKXDdBE2JwQrOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=l6NCsljiQrmdmWs5o+gfYgXEIbXvOSPe/7s85UmcUXY=;
        b=LD1f5FBk6NrAeaUXayR8mbT/phnRiCQn0MX1yDxDzFoKD21WPggZZKiEtcL+WDRycd
         IK14ZqduEWJ9BKh4rw5e/SA17eYjDeko8yZkwm931JcKK3zrOzghgxcmVaCHC7IADTS2
         K9oHYJzdv5Au7U6oaduKBISQIaIf+UDd4RWsGSVaibtuqUVoQ99jL69fldSd44+fok+I
         FJcbkudKzE+edbIfOMpVeFVlT4pqlPRpVzbe9J9EtsFuQB06yEUrqo81Jo6XOY7rMwtn
         UiAxBhXscuWQ4ii4ffYpg+sjxsS5kLmXl4CY85N35EzXWhgyXIv2rTcHL/+KStzBe+HL
         CC5A==
X-Gm-Message-State: AOAM532/H+OZIpe0CmyXqKkZlTV5Zvq3IOiZAjEigskc1qwbDK3dEvRR
        Hl+l93NDq8faHkiAQ4ChlGN9QJBzwIHQkWGdz5/IQw==
X-Google-Smtp-Source: ABdhPJwuI0iSIKzOgj4iQbbvNukC602d4rDbSTR126JlCcUekJzNHeCuIfzTWkK9MqLlu9vEEjVTu/4CH6znZ33wrLg=
X-Received: by 2002:a9d:1b6e:: with SMTP id l101mr12661331otl.34.1626909078087;
 Wed, 21 Jul 2021 16:11:18 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 23:11:17 +0000
MIME-Version: 1.0
In-Reply-To: <1620800053-26405-4-git-send-email-skakit@codeaurora.org>
References: <1620800053-26405-1-git-send-email-skakit@codeaurora.org> <1620800053-26405-4-git-send-email-skakit@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 23:11:17 +0000
Message-ID: <CAE-0n50rYuZKa2jXNGUb8oUFsa+zo1Zehqsw9qr1ZXoYQe92pA@mail.gmail.com>
Subject: Re: [PATCH V4 3/5] dt-bindings: power: reset: Change
 'additionalProperties' to true
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

Quoting satya priya (2021-05-11 23:14:11)
> Change 'additionalProperties' to true as this is a generic binding.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
