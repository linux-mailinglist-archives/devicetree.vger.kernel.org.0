Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 658DB5F63D1
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 11:51:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231167AbiJFJvi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 05:51:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230482AbiJFJvh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 05:51:37 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE8D77C18A
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 02:51:36 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id a5-20020a17090aa50500b002008eeb040eso4638115pjq.1
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 02:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JGytHr6ktTvQXnQmKAU1gxNN7NqSsGApMXAKkO5yTUM=;
        b=WgFIH7EpkOzUw82QvltTWmtAoRp1TpnJBj//aPVATAnRYWAcQVKz1Xs1AUugU+Re+5
         M5nWTA8BOd6SR4KWmvmR3fbK33b4CSXWxIDrysvU8M5dwX52wNDH/aRCt5GR8eb8BwQs
         vmaUpNJmuHMBXsJF5mvg0ixg8uLifleTYnCrHPV+N7cGwtOc2FzRKrhg1xh6SArKsH/G
         xNFKuo55SNUVqQnUWv4/lrfBHz1EZl68+yRchaOgoqLBF+h0BcfmF3HH3bER4W0DjbMn
         G0XAEriWYJHf8r+p8zos+yk5MVNDjLgLydDlOOdk5ooOB1pFwX/M8VNqJqnEuW7fWCbf
         fudA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JGytHr6ktTvQXnQmKAU1gxNN7NqSsGApMXAKkO5yTUM=;
        b=h4O0kCqHr9FuafmHSOhI2IfMNvPjN9KLg/fzz6RNpykzakXIvq+nkks6JB9/ywoqsG
         tCplu6NjzBkjXaLJeYBjOuesy7XWAcGiad2aWZ1LD8LgijN9DQeCyrfMgHppvCB+y1Cl
         kGvg/2/M6/NZw+yzpACD+WlX587THTieo9EcUNxT+KsavuzjyxjkPW8HX5/bSpPo8FTT
         AZHPA/PlNcCQ3H9YUQqGiQqKUOisoWRyf7A3elAmxkzt6FyOvirF0qkySZ6dWMQy7Ti7
         EJ+/AWEVAHehMiwVu+f/7AeJV9r+VALjXaKBHXg8mYzE2OChKlewcvttXIdOiobYjz+9
         oD3Q==
X-Gm-Message-State: ACrzQf3+iR0AUcfaYnKUSXph2L2L4tMxVpuxLylm2HdIFpb1w1OboBd/
        R7JuZ8o5kG23H2f92rsQZsQFLqmGC5Vv2t7q4dc=
X-Google-Smtp-Source: AMsMyM4WJCFNP5NY1EQlOu1n/TvrgVabVlxYBD9vI01DdLyVvnFbZwGLRL1vPDaIqnrqI5u6G4C0prdLLi7JyiVxvVo=
X-Received: by 2002:a17:902:ce84:b0:176:b0fb:96a7 with SMTP id
 f4-20020a170902ce8400b00176b0fb96a7mr3785798plg.51.1665049896341; Thu, 06 Oct
 2022 02:51:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:ed94:b0:72:1f1a:9701 with HTTP; Thu, 6 Oct 2022
 02:51:35 -0700 (PDT)
Reply-To: a16udu@gmail.com
From:   audu BELLO <g.hgssq@gmail.com>
Date:   Thu, 6 Oct 2022 02:51:35 -0700
Message-ID: <CADT8uo5f75-M+ixSSp53zcDTJG74YYnD5HgeGMNLfOxxHWCX4Q@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I am contacting you regarding a large sum transfer, as soon as you
reply you will be directed to a next step
