Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FE9B4EB398
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 20:43:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240633AbiC2SpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 14:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240630AbiC2SpV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 14:45:21 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 128C72664
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 11:43:37 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id w127so19909817oig.10
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 11:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=jJgJaMTHbVPRpzzX8wWqljfnu0rMcXJ37Z1F9i4ViKE=;
        b=iMCAG6JgROV+/FPplCKnJM+ys/t9GFRns7zC0Q6NBE1c96DY/QDFVdimmF5+WXbT6f
         5j9yKezKgdYvoeYhULj6kndgrR1mXYNmazyjn/CKjhSXQ4uWoB/dk/m/aFS/LrPAfYeI
         XGy+Q/Z0KYSYPicPBDlRyGooqCzUCV/FwZCaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=jJgJaMTHbVPRpzzX8wWqljfnu0rMcXJ37Z1F9i4ViKE=;
        b=02CYG+p1Vpn8sSqcwgE6aRPPQmTD4dCIqs++fKbDuyBOq6CsnieKG+484qsh3MLkXG
         E/w3HMxJmojSUz8i+UGCO3CuA18xYWSqtbtZrZXRTFysoFjj6aoPO/pb/zQDdc0U5IDz
         M9RG6eaeCX2POAJTXIlMVqHgh75ekxd61hmwPvX777RlgaghWEaGZR8NV+6q2mem7bSn
         wTMQIof02Uirvx4iQv5HW/4cqL+s0dQ/q74pSYUjZpZKJFGQhObeNYODkP/lEAFVSj+n
         72rpMMzhXRsupwrG3iclj3mJi53lhpwC6/b7RvkJXTBB5h8flD5ccjqibNAAwlg7Crg1
         1eTA==
X-Gm-Message-State: AOAM530MG8K4oT2sIQmRaSDlJmbE1Okd7VphmJ4fr4po07uFPk6ZjZCv
        r/yF81IRQIYNl7Hh/aG4f+AJnAvs72hHitod8lpp2i9g8QM=
X-Google-Smtp-Source: ABdhPJzQHjj+lAk1NW/mpLuAJlGuBOXN9OINoi+xH62ikInNhS2Qj0DHMM7svWRSR23gNNbnO6b2UtnoO064yaYXz88=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr254551oie.193.1648579416414; Tue, 29
 Mar 2022 11:43:36 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 29 Mar 2022 20:43:35 +0200
MIME-Version: 1.0
In-Reply-To: <20220329105854.v3.1.Icedb2e3cd5e21f3a4ec535ddf756fa44d053b6ed@changeid>
References: <20220329105854.v3.1.Icedb2e3cd5e21f3a4ec535ddf756fa44d053b6ed@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 29 Mar 2022 20:43:35 +0200
Message-ID: <CAE-0n50do0rVHPVqgATbr9xTj1_7tt3Jv8ktkwd-P=8D1b0-OA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sc7280: Add SAR sensors for herobrine
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2022-03-29 10:59:33)
> Add nodes for the two SX9324 SAR proximity sensors. Not all herobrine
> boards have these sensors, so leave them disabled by default.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
