Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71E204E7D70
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:22:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbiCZAGf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 20:06:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230162AbiCZAGc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 20:06:32 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 141661C5525
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 17:04:57 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id q189so9874162oia.9
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 17:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=JBdM3L+hz1UBU3mZPkJ057tNeOZ1uEepPYItJGWmLVQ=;
        b=JwoZ+I8ZIewknpFBakMdl3Vd8mP1MO77qWD1BBFNonF729zax3j8ee/FVr4vlI7N+V
         itV8adGLVADDq90950mJQVgXgIxJTiv0Ya+4iTF5Eo74unhIj9sX6nhB0vIYSZEGVEi1
         I2VzRldNdsp4Uoj7TdBlbWuBHY+QlONSJwJp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=JBdM3L+hz1UBU3mZPkJ057tNeOZ1uEepPYItJGWmLVQ=;
        b=dqwdEyH41yj+LODT/Y4h7B7uR0OKabhRKPgaGiFLxmkxhbdQyvt625hzYA73DMJ9gQ
         vbSVURjUhZmF+IaVgtUj4MhwmzeT6cNZingNi2O8UPmKyMfvSGrYqnTAyHKUX48na2x5
         KLD69I1sXz+m7pSs/+ZT2Ya+swrozAllnXo3qCfKnqkKZPkLeoo3Yzt7Oo7vRgRNNcPf
         G54Te5XAkhK3FqxB74/Rml4y4vbXqhgVgP1wH7nQjTUBOXGEnJ6fJRn/5F0i2bv83Xkg
         el5PjEYYFyTfuwyaUMS0asJE6+bp1dNtYV8nDU+jrenSI+2mSpeGa5ecBrAFt1lazmKW
         tE0g==
X-Gm-Message-State: AOAM531vSqLCt/MPC/InbLA+DQKXP1YEM2rchGrnupXwVhzDdiVC0yvG
        TBSgGrE8XjTRg7LNVZgqxrTwVIqkiV6XB4v6mNQZcA==
X-Google-Smtp-Source: ABdhPJxRoNOqHT6KnYgf/KO0G/qzUqbwN6CVgIStzU/orP5nJUcRE/xXMX8vhdg4TrvJL4nLTUK8XNyJf89okbE3Z1A=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr6466153oie.193.1648253096462; Fri, 25
 Mar 2022 17:04:56 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 19:04:56 -0500
MIME-Version: 1.0
In-Reply-To: <20220325220827.3719273-8-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org> <20220325220827.3719273-8-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 19:04:56 -0500
Message-ID: <CAE-0n52N22HBd+a_wD2hkYrta7y4QFrpeMTULAVHCKhApdAMdg@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] dt-bindings: iio: sx9360: Add precharge resistor setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-25 15:08:26)
> Allow configure the resistance used during precharge.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
