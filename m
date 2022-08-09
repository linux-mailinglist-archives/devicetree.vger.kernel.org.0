Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5202958D13F
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 02:13:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244457AbiHIANv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 20:13:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbiHIANu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 20:13:50 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 095C312AFC
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 17:13:49 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id cm4-20020a056830650400b0063675a4dd74so7535031otb.10
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 17:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc;
        bh=kW3fIbHIYupxFutuFacuIfK5nAp/xhvWdF2dTNBXnwc=;
        b=JV3/K4ycsvpnX/sRbSuaJlD+dXLTfADOOideh4/JL6MFyF6uIWCi/VvPvaUZrHD/zR
         CkL/rJokC4pgwESEVruaIN3uY3tQYoiASS1WdBowlP1tsvn0ShY4mECYgzaHWlIb1BUE
         FMjp0WGejEY9jD9hJ6UTXxJHKb75uX1AFtUfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc;
        bh=kW3fIbHIYupxFutuFacuIfK5nAp/xhvWdF2dTNBXnwc=;
        b=HoUyLvz4I7IlZSs6uOUVldcc4LvIeHpInHYrM+Fc7loucosi6jScYiE3w+cChQAmKZ
         AU8wm+G4Na8OG5gik1yPFo4PVRzlCzlKzln3yoqP7+7x/q5U6z43OT928pO41mb0PM/5
         NXPF0f9IO6PHy1hXmB5dFvtoehL4fiBaqI9RzHh0isc1q3AA1kegLjGQXtUi9bKFp2bw
         CWKvwuY5e6LqyWSwx71bKi5xj6opZAxLzZgCbHGxX6qW8IHZSBkhOZ3+MAnZ05iskljv
         4sY70N8KFZFBzDFFAewzos8w9rp2WV31NW7BY7aWMXodQ2Qjy3MkNradol2wsNUpko/z
         t49Q==
X-Gm-Message-State: ACgBeo21zVw3pWd1ejq+7z/WNr+Je6LKzvNHdi83iIW6toG1iinz97MQ
        QvraUNRS9k4UemYXwUF1/47ICa1o/auatAjQKA5nKjv3Xjw=
X-Google-Smtp-Source: AA6agR6IaK6tGmfxiic3VErOMlGfP21fXmWaZqXy9GVcbngzsk5DWEguMMnlsICPM2Hq0dikDa9V3kzk+RrnrLECQXE=
X-Received: by 2002:a05:6830:1d88:b0:61c:8b2a:22b0 with SMTP id
 y8-20020a0568301d8800b0061c8b2a22b0mr8048845oti.3.1660004028333; Mon, 08 Aug
 2022 17:13:48 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 8 Aug 2022 17:13:47 -0700
MIME-Version: 1.0
In-Reply-To: <e28ef7e2-c23a-f87b-09b2-958f2212c30e@quicinc.com>
References: <1658316144-16520-1-git-send-email-quic_c_skakit@quicinc.com>
 <1658316144-16520-3-git-send-email-quic_c_skakit@quicinc.com>
 <CAE-0n53wdhH2P729KDDbghScCcU=4-sFmxVugyJgxmGeFs4mgw@mail.gmail.com> <e28ef7e2-c23a-f87b-09b2-958f2212c30e@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 8 Aug 2022 17:13:47 -0700
Message-ID: <CAE-0n50qou6zy6E=cDafMi6RknMjtVgDiBnbeVE+tNTj-JLshw@mail.gmail.com>
Subject: Re: [PATCH V3 2/2] arm64: dts: qcom: sc7280: Update lpassaudio clock
 controller for resets
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya Kakitapalli <quic_c_skakit@quicinc.com>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_tdas@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya Kakitapalli (Temp) (2022-07-26 22:51:08)
>
> On 7/27/2022 6:52 AM, Stephen Boyd wrote:
> > Quoting Satya Priya (2022-07-20 04:22:24)
> >> From: Taniya Das <quic_tdas@quicinc.com>
> >>
> >> The lpass audio supports TX/RX/WSA block resets. Also to keep
> >> consistency update lpasscore to lpass_core.
> > Consistency with what?
>
>
> Hi Stephen,
>
>
> We got a comment to change this on previous posts, to keep consistency
> with the other nodes like lpass_aon etc

Can you make that change in a different patch? Then the focus can be on
what the patch subject is about. You're not changing the same lines,
right?
