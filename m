Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28E76423067
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 20:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232869AbhJESxt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 14:53:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234718AbhJESxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 14:53:48 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8B5CC061760
        for <devicetree@vger.kernel.org>; Tue,  5 Oct 2021 11:51:57 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id s24so560919oij.8
        for <devicetree@vger.kernel.org>; Tue, 05 Oct 2021 11:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=LIIZhO6QemCxBZ+WNeUA1NEuSGEugkxriOxoUlLOrtM=;
        b=Y1nq5bwPYgRtZSjzARwnqT6iVgQ/xdr6g8NM7LasqBqbPZpI4zP1qfDtiPCm3SaWPr
         jrdpR5Tx34tO4K7ERkIGnrUhYh3+v/jVh5GhPPfbfud6u6GE5I6i0Rr4W/eNnlf8HALN
         BsGPH1DMJw5cFM9cMKPantLExCmTQIv+nQip4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=LIIZhO6QemCxBZ+WNeUA1NEuSGEugkxriOxoUlLOrtM=;
        b=7zmoIZR9Gu+Y/bYK7oV72SHtQFaxZn8dG7RULZOlrhqlvvEn0EK9J3xwdMIIzLk9Yt
         2Ery8T9n5JQ9xXu6QJ0WZmJXHvM0HMAv8S/0w3TiGuE0l6mUfNGzXnzWU9Goj0QfYrPv
         jiRgR5pipaaiOB4s6V/K3WJUZqq7Yy76u/0NpGIwSFqYFQX+9cS5DLNr0if7SZqdaThJ
         P2STLYJOeJ+mtcVQjhlk2Kv6lMley310U5u5yqEeCb5M8RfNHZGRLtLUL2RJfFcDwFhZ
         Mpzc7lh94yWWj75a8KCPe5mWDPIyWprLz0cefeRSH/1fjvxZC6c8cHBXq7NnQsl1CKcD
         4yiQ==
X-Gm-Message-State: AOAM533wp/TfJHCwF6NqXQp0BKEeQEcrIzierxeyX4/MGy/ltLD9CqnM
        JA/16RSZAJBQ3V/xRUIVxeGlUmhcsiUbFI+AHtNeYQ==
X-Google-Smtp-Source: ABdhPJx3bk6kPZwvGXnigGeMH3u2Pd/DyxwzdF0vLz40GZdxglzimeBZyFdhqzgXgqztcirSxk8zy1Y/fjFQiUbZmPM=
X-Received: by 2002:aca:3110:: with SMTP id x16mr3979222oix.64.1633459917288;
 Tue, 05 Oct 2021 11:51:57 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 5 Oct 2021 11:51:56 -0700
MIME-Version: 1.0
In-Reply-To: <1633459359-31517-5-git-send-email-pmaliset@codeaurora.org>
References: <1633459359-31517-1-git-send-email-pmaliset@codeaurora.org> <1633459359-31517-5-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 5 Oct 2021 11:51:56 -0700
Message-ID: <CAE-0n511H+FbPCbSb+FP0VMsrTmA4h8Q9pfk-=4zZPnwLuRAPQ@mail.gmail.com>
Subject: Re: [PATCH v11 4/5] PCI: qcom: Add a flag in match data along with ops
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org,
        linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-10-05 11:42:38)
> Add pipe_clk_need_muxing flag in match data and configure
> If the platform needs to switch pipe_clk_src.
>
> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
